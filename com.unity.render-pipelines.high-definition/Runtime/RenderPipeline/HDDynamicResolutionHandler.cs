using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Experimental.Rendering;

namespace UnityEngine.Experimental.Rendering.HDPipeline
{
    // This must return a float in the range [0.0f...1.0f]. It is a lerp factor between min screen fraction and max screen fraction.  
    public delegate float PerformDynamicRes();      // TODO_FCC: Rename this.




    public class HDDynamicResolutionHandler
    {
        private bool  m_Enabled = false;
        private float m_MinScreenFraction = 1.0f;
        private float m_MaxScreenFraction = 1.0f;
        private float m_CurrentFraction = 1.0f;
        private float m_PrevFraction = -1.0f;
        private bool  m_ForcingRes = false;

        private float prevHWScaleWidth = 1.0f;
        private float prevHWScaleHeight = 1.0f;

        // Debug
        public Vector2Int cachedOriginalSize { get; private set; }
        public bool hasSwitchedResolution { get; private set; }

        public DynamicResUpscaleFilter filter { get; set; }


        private DynamicResolutionType type;

        private PerformDynamicRes m_DynamicResMethod = null;
        private static HDDynamicResolutionHandler s_Instance = new HDDynamicResolutionHandler();
        public static HDDynamicResolutionHandler instance { get { return s_Instance; } }


        private HDDynamicResolutionHandler()
        {
            m_DynamicResMethod = DefaultDynamicResMethod;
            filter = DynamicResUpscaleFilter.Bilinear;

        }

        // TODO: Eventually we will need to provide a good default implementation for this. 
        static public float DefaultDynamicResMethod()
        {
            return 1.0f;
        }

        private void ProcessSettings(GlobalDynamicResolutionSettings settings)
        {
            m_Enabled = settings.enabled;
            if (!m_Enabled)
            {
                m_CurrentFraction = 1.0f;
            }
            else
            {
                type = settings.dynResType;
                float minScreenFrac = Mathf.Clamp(settings.minPercentage / 100.0f, 0.1f, 1.0f);
                m_MinScreenFraction = minScreenFrac;
                float maxScreenFrac = Mathf.Clamp(settings.maxPercentage / 100.0f, m_MinScreenFraction, 3.0f);
                m_MaxScreenFraction = maxScreenFrac;

                filter = settings.upsampleFilter;
                m_ForcingRes = settings.forceResolution;

                if (m_ForcingRes)
                {
                    float fraction = Mathf.Clamp(settings.forcedPercentage / 100.0f, 0.1f, 1.5f);
                    m_CurrentFraction = fraction;
                }
            }
        }

        static public void SetDynamicResScaler(PerformDynamicRes scaler)
        {
            s_Instance.m_DynamicResMethod = scaler;
        }

        public void Update(GlobalDynamicResolutionSettings settings, Action OnResolutionChange = null)
        {
            ProcessSettings(settings);

            if (!m_ForcingRes)
            {
                float currLerp = m_DynamicResMethod();
                float lerpFactor = Mathf.Clamp(currLerp, 0.0f, 1.0f);
                m_CurrentFraction = Mathf.Lerp(m_MinScreenFraction, m_MaxScreenFraction, lerpFactor);
            }

            if (m_CurrentFraction != m_PrevFraction)
            {
                m_PrevFraction = m_CurrentFraction;
                hasSwitchedResolution = true;

                if (HardwareDynamicResIsEnabled())
                {
                    ScalableBufferManager.ResizeBuffers(m_CurrentFraction, m_CurrentFraction);
                }

                OnResolutionChange();
            }
            else
            {
                // Unity can change the scale factor by itself so we need to trigger the Action if that happens as well.
                if (HardwareDynamicResIsEnabled()) 
                {
                    if(ScalableBufferManager.widthScaleFactor != prevHWScaleWidth  ||
                        ScalableBufferManager.heightScaleFactor != prevHWScaleHeight)
                    {
                        OnResolutionChange();
                    }
                }
                hasSwitchedResolution = false;
            }

            prevHWScaleWidth = ScalableBufferManager.widthScaleFactor;
            prevHWScaleHeight = ScalableBufferManager.heightScaleFactor;
        }

        public bool SoftwareDynamicResIsEnabled()
        {
            return m_Enabled && m_CurrentFraction != 1.0f && type == DynamicResolutionType.Software;
        }
        public bool HardwareDynamicResIsEnabled()
        {
            return false;
            // This has lots of problems with platform. Momentarily disabling it until we solve the issues.
            // return m_Enabled && type == DynamicResolutionType.Hardware;
        }

        public Vector2Int GetRTHandleScale(Vector2Int size)
        {
            cachedOriginalSize = size;

            if(!m_Enabled)
            {
                return size;
            }

            float scaleFractionX = m_CurrentFraction;
            float scaleFractionY = m_CurrentFraction;
            if(HardwareDynamicResIsEnabled())
            {
                scaleFractionX = ScalableBufferManager.widthScaleFactor;
                scaleFractionY = ScalableBufferManager.heightScaleFactor;
            }

            Vector2Int scaledSize = new Vector2Int(Mathf.CeilToInt(size.x * scaleFractionX), Mathf.CeilToInt(size.y * scaleFractionY));
            scaledSize.x += (1 & scaledSize.x);
            scaledSize.y += (1 & scaledSize.y);

            return scaledSize;
        }

        public float GetCurrentScale()
        {
            return m_Enabled ? m_CurrentFraction : 1.0f;
        }

    }
}
