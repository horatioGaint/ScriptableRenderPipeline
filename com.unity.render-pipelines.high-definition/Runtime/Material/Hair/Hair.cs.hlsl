//
// This file was automatically generated. Please don't edit by hand.
//

#ifndef HAIR_CS_HLSL
#define HAIR_CS_HLSL
//
// UnityEngine.Experimental.Rendering.HDPipeline.Hair+MaterialFeatureFlags:  static fields
//
#define MATERIALFEATUREFLAGS_HAIR_KAJIYA_KAY (1)
#define MATERIALFEATUREFLAGS_HAIR_SUBSURFACE_SCATTERING (2)
#define MATERIALFEATUREFLAGS_HAIR_TRANSMISSION (4)

//
// UnityEngine.Experimental.Rendering.HDPipeline.Hair+SurfaceData:  static fields
//
#define DEBUGVIEW_HAIR_SURFACEDATA_MATERIAL_FEATURES (1400)
#define DEBUGVIEW_HAIR_SURFACEDATA_AMBIENT_OCCLUSION (1401)
#define DEBUGVIEW_HAIR_SURFACEDATA_DIFFUSE (1402)
#define DEBUGVIEW_HAIR_SURFACEDATA_SPECULAR_OCCLUSION (1403)
#define DEBUGVIEW_HAIR_SURFACEDATA_NORMAL (1404)
#define DEBUGVIEW_HAIR_SURFACEDATA_NORMAL_VIEW_SPACE (1405)
#define DEBUGVIEW_HAIR_SURFACEDATA_GEOMETRIC_NORMAL (1406)
#define DEBUGVIEW_HAIR_SURFACEDATA_GEOMETRIC_NORMAL_VIEW_SPACE (1407)
#define DEBUGVIEW_HAIR_SURFACEDATA_SMOOTHNESS (1408)
#define DEBUGVIEW_HAIR_SURFACEDATA_DIFFUSION_PROFILE (1409)
#define DEBUGVIEW_HAIR_SURFACEDATA_SUBSURFACE_MASK (1410)
#define DEBUGVIEW_HAIR_SURFACEDATA_THICKNESS (1411)
#define DEBUGVIEW_HAIR_SURFACEDATA_TANGENT (1412)
#define DEBUGVIEW_HAIR_SURFACEDATA_SECONDARY_SMOOTHNESS (1413)
#define DEBUGVIEW_HAIR_SURFACEDATA_SPECULAR_TINT (1414)
#define DEBUGVIEW_HAIR_SURFACEDATA_SECONDARY_SPECULAR_TINT (1415)
#define DEBUGVIEW_HAIR_SURFACEDATA_SPECULAR_SHIFT (1416)
#define DEBUGVIEW_HAIR_SURFACEDATA_SECONDARY_SPECULAR_SHIFT (1417)

//
// UnityEngine.Experimental.Rendering.HDPipeline.Hair+BSDFData:  static fields
//
#define DEBUGVIEW_HAIR_BSDFDATA_MATERIAL_FEATURES (1450)
#define DEBUGVIEW_HAIR_BSDFDATA_AMBIENT_OCCLUSION (1451)
#define DEBUGVIEW_HAIR_BSDFDATA_SPECULAR_OCCLUSION (1452)
#define DEBUGVIEW_HAIR_BSDFDATA_DIFFUSE_COLOR (1453)
#define DEBUGVIEW_HAIR_BSDFDATA_FRESNEL0 (1454)
#define DEBUGVIEW_HAIR_BSDFDATA_SPECULAR_TINT (1455)
#define DEBUGVIEW_HAIR_BSDFDATA_NORMAL_WS (1456)
#define DEBUGVIEW_HAIR_BSDFDATA_NORMAL_VIEW_SPACE (1457)
#define DEBUGVIEW_HAIR_BSDFDATA_GEOMETRIC_NORMAL (1458)
#define DEBUGVIEW_HAIR_BSDFDATA_GEOMETRIC_NORMAL_VIEW_SPACE (1459)
#define DEBUGVIEW_HAIR_BSDFDATA_PERCEPTUAL_ROUGHNESS (1460)
#define DEBUGVIEW_HAIR_BSDFDATA_DIFFUSION_PROFILE (1461)
#define DEBUGVIEW_HAIR_BSDFDATA_SUBSURFACE_MASK (1462)
#define DEBUGVIEW_HAIR_BSDFDATA_THICKNESS (1463)
#define DEBUGVIEW_HAIR_BSDFDATA_USE_THICK_OBJECT_MODE (1464)
#define DEBUGVIEW_HAIR_BSDFDATA_TRANSMITTANCE (1465)
#define DEBUGVIEW_HAIR_BSDFDATA_TANGENT_WS (1466)
#define DEBUGVIEW_HAIR_BSDFDATA_BITANGENT_WS (1467)
#define DEBUGVIEW_HAIR_BSDFDATA_ROUGHNESS_T (1468)
#define DEBUGVIEW_HAIR_BSDFDATA_ROUGHNESS_B (1469)
#define DEBUGVIEW_HAIR_BSDFDATA_ANISOTROPY (1470)
#define DEBUGVIEW_HAIR_BSDFDATA_SECONDARY_PERCEPTUAL_ROUGHNESS (1471)
#define DEBUGVIEW_HAIR_BSDFDATA_SECONDARY_SPECULAR_TINT (1472)
#define DEBUGVIEW_HAIR_BSDFDATA_SPECULAR_EXPONENT (1473)
#define DEBUGVIEW_HAIR_BSDFDATA_SECONDARY_SPECULAR_EXPONENT (1474)
#define DEBUGVIEW_HAIR_BSDFDATA_SPECULAR_SHIFT (1475)
#define DEBUGVIEW_HAIR_BSDFDATA_SECONDARY_SPECULAR_SHIFT (1476)

// Generated from UnityEngine.Experimental.Rendering.HDPipeline.Hair+SurfaceData
// PackingRules = Exact
struct SurfaceData
{
    uint materialFeatures;
    float ambientOcclusion;
    float3 diffuseColor;
    float specularOcclusion;
    float3 normalWS;
    float3 geomNormalWS;
    float perceptualSmoothness;
    uint diffusionProfile;
    float subsurfaceMask;
    float thickness;
    float3 tangentWS;
    float secondaryPerceptualSmoothness;
    float3 specularTint;
    float3 secondarySpecularTint;
    float specularShift;
    float secondarySpecularShift;
};

// Generated from UnityEngine.Experimental.Rendering.HDPipeline.Hair+BSDFData
// PackingRules = Exact
struct BSDFData
{
    uint materialFeatures;
    float ambientOcclusion;
    float specularOcclusion;
    float3 diffuseColor;
    float3 fresnel0;
    float3 specularTint;
    float3 normalWS;
    float3 geomNormalWS;
    float perceptualRoughness;
    uint diffusionProfile;
    float subsurfaceMask;
    float thickness;
    bool useThickObjectMode;
    float3 transmittance;
    float3 tangentWS;
    float3 bitangentWS;
    float roughnessT;
    float roughnessB;
    float anisotropy;
    float secondaryPerceptualRoughness;
    float3 secondarySpecularTint;
    float specularExponent;
    float secondarySpecularExponent;
    float specularShift;
    float secondarySpecularShift;
};

//
// Accessors for UnityEngine.Experimental.Rendering.HDPipeline.Hair+BSDFData
//
uint GetMaterialFeatures(BSDFData value)
{
    return value.materialFeatures;
}
float GetAmbientOcclusion(BSDFData value)
{
    return value.ambientOcclusion;
}
float GetSpecularOcclusion(BSDFData value)
{
    return value.specularOcclusion;
}
float3 GetDiffuseColor(BSDFData value)
{
    return value.diffuseColor;
}
float3 GetFresnel0(BSDFData value)
{
    return value.fresnel0;
}
float3 GetSpecularTint(BSDFData value)
{
    return value.specularTint;
}
float3 GetNormalWS(BSDFData value)
{
    return value.normalWS;
}
float3 GetGeomNormalWS(BSDFData value)
{
    return value.geomNormalWS;
}
float GetPerceptualRoughness(BSDFData value)
{
    return value.perceptualRoughness;
}
uint GetDiffusionProfile(BSDFData value)
{
    return value.diffusionProfile;
}
float GetSubsurfaceMask(BSDFData value)
{
    return value.subsurfaceMask;
}
float GetThickness(BSDFData value)
{
    return value.thickness;
}
bool GetUseThickObjectMode(BSDFData value)
{
    return value.useThickObjectMode;
}
float3 GetTransmittance(BSDFData value)
{
    return value.transmittance;
}
float3 GetTangentWS(BSDFData value)
{
    return value.tangentWS;
}
float3 GetBitangentWS(BSDFData value)
{
    return value.bitangentWS;
}
float GetRoughnessT(BSDFData value)
{
    return value.roughnessT;
}
float GetRoughnessB(BSDFData value)
{
    return value.roughnessB;
}
float GetAnisotropy(BSDFData value)
{
    return value.anisotropy;
}
float GetSecondaryPerceptualRoughness(BSDFData value)
{
    return value.secondaryPerceptualRoughness;
}
float3 GetSecondarySpecularTint(BSDFData value)
{
    return value.secondarySpecularTint;
}
float GetSpecularExponent(BSDFData value)
{
    return value.specularExponent;
}
float GetSecondarySpecularExponent(BSDFData value)
{
    return value.secondarySpecularExponent;
}
float GetSpecularShift(BSDFData value)
{
    return value.specularShift;
}
float GetSecondarySpecularShift(BSDFData value)
{
    return value.secondarySpecularShift;
}
//
// Setters for UnityEngine.Experimental.Rendering.HDPipeline.Hair+BSDFData
//
void SetMaterialFeatures(uint newValue, BSDFData dest )
{
    dest.materialFeatures = newValue;
}
void SetAmbientOcclusion(float newValue, BSDFData dest )
{
    dest.ambientOcclusion = newValue;
}
void SetSpecularOcclusion(float newValue, BSDFData dest )
{
    dest.specularOcclusion = newValue;
}
void SetDiffuseColor(float3 newValue, BSDFData dest )
{
    dest.diffuseColor = newValue;
}
void SetFresnel0(float3 newValue, BSDFData dest )
{
    dest.fresnel0 = newValue;
}
void SetSpecularTint(float3 newValue, BSDFData dest )
{
    dest.specularTint = newValue;
}
void SetNormalWS(float3 newValue, BSDFData dest )
{
    dest.normalWS = newValue;
}
void SetGeomNormalWS(float3 newValue, BSDFData dest )
{
    dest.geomNormalWS = newValue;
}
void SetPerceptualRoughness(float newValue, BSDFData dest )
{
    dest.perceptualRoughness = newValue;
}
void SetDiffusionProfile(uint newValue, BSDFData dest )
{
    dest.diffusionProfile = newValue;
}
void SetSubsurfaceMask(float newValue, BSDFData dest )
{
    dest.subsurfaceMask = newValue;
}
void SetThickness(float newValue, BSDFData dest )
{
    dest.thickness = newValue;
}
void SetUseThickObjectMode(bool newValue, BSDFData dest )
{
    dest.useThickObjectMode = newValue;
}
void SetTransmittance(float3 newValue, BSDFData dest )
{
    dest.transmittance = newValue;
}
void SetTangentWS(float3 newValue, BSDFData dest )
{
    dest.tangentWS = newValue;
}
void SetBitangentWS(float3 newValue, BSDFData dest )
{
    dest.bitangentWS = newValue;
}
void SetRoughnessT(float newValue, BSDFData dest )
{
    dest.roughnessT = newValue;
}
void SetRoughnessB(float newValue, BSDFData dest )
{
    dest.roughnessB = newValue;
}
void SetAnisotropy(float newValue, BSDFData dest )
{
    dest.anisotropy = newValue;
}
void SetSecondaryPerceptualRoughness(float newValue, BSDFData dest )
{
    dest.secondaryPerceptualRoughness = newValue;
}
void SetSecondarySpecularTint(float3 newValue, BSDFData dest )
{
    dest.secondarySpecularTint = newValue;
}
void SetSpecularExponent(float newValue, BSDFData dest )
{
    dest.specularExponent = newValue;
}
void SetSecondarySpecularExponent(float newValue, BSDFData dest )
{
    dest.secondarySpecularExponent = newValue;
}
void SetSpecularShift(float newValue, BSDFData dest )
{
    dest.specularShift = newValue;
}
void SetSecondarySpecularShift(float newValue, BSDFData dest )
{
    dest.secondarySpecularShift = newValue;
}
//
// Debug functions
//
void GetGeneratedSurfaceDataDebug(uint paramId, SurfaceData surfacedata, inout float3 result, inout bool needLinearToSRGB)
{
    switch (paramId)
    {
        case DEBUGVIEW_HAIR_SURFACEDATA_MATERIAL_FEATURES:
            result = GetIndexColor(surfacedata.materialFeatures);
            break;
        case DEBUGVIEW_HAIR_SURFACEDATA_AMBIENT_OCCLUSION:
            result = surfacedata.ambientOcclusion.xxx;
            break;
        case DEBUGVIEW_HAIR_SURFACEDATA_DIFFUSE:
            result = surfacedata.diffuseColor;
            needLinearToSRGB = true;
            break;
        case DEBUGVIEW_HAIR_SURFACEDATA_SPECULAR_OCCLUSION:
            result = surfacedata.specularOcclusion.xxx;
            break;
        case DEBUGVIEW_HAIR_SURFACEDATA_NORMAL:
            result = surfacedata.normalWS * 0.5 + 0.5;
            break;
        case DEBUGVIEW_HAIR_SURFACEDATA_NORMAL_VIEW_SPACE:
            result = surfacedata.normalWS * 0.5 + 0.5;
            break;
        case DEBUGVIEW_HAIR_SURFACEDATA_GEOMETRIC_NORMAL:
            result = surfacedata.geomNormalWS * 0.5 + 0.5;
            break;
        case DEBUGVIEW_HAIR_SURFACEDATA_GEOMETRIC_NORMAL_VIEW_SPACE:
            result = surfacedata.geomNormalWS * 0.5 + 0.5;
            break;
        case DEBUGVIEW_HAIR_SURFACEDATA_SMOOTHNESS:
            result = surfacedata.perceptualSmoothness.xxx;
            break;
        case DEBUGVIEW_HAIR_SURFACEDATA_DIFFUSION_PROFILE:
            result = GetIndexColor(surfacedata.diffusionProfile);
            break;
        case DEBUGVIEW_HAIR_SURFACEDATA_SUBSURFACE_MASK:
            result = surfacedata.subsurfaceMask.xxx;
            break;
        case DEBUGVIEW_HAIR_SURFACEDATA_THICKNESS:
            result = surfacedata.thickness.xxx;
            break;
        case DEBUGVIEW_HAIR_SURFACEDATA_TANGENT:
            result = surfacedata.tangentWS * 0.5 + 0.5;
            break;
        case DEBUGVIEW_HAIR_SURFACEDATA_SECONDARY_SMOOTHNESS:
            result = surfacedata.secondaryPerceptualSmoothness.xxx;
            break;
        case DEBUGVIEW_HAIR_SURFACEDATA_SPECULAR_TINT:
            result = surfacedata.specularTint;
            needLinearToSRGB = true;
            break;
        case DEBUGVIEW_HAIR_SURFACEDATA_SECONDARY_SPECULAR_TINT:
            result = surfacedata.secondarySpecularTint;
            needLinearToSRGB = true;
            break;
        case DEBUGVIEW_HAIR_SURFACEDATA_SPECULAR_SHIFT:
            result = surfacedata.specularShift.xxx;
            break;
        case DEBUGVIEW_HAIR_SURFACEDATA_SECONDARY_SPECULAR_SHIFT:
            result = surfacedata.secondarySpecularShift.xxx;
            break;
    }
}

//
// Debug functions
//
void GetGeneratedBSDFDataDebug(uint paramId, BSDFData bsdfdata, inout float3 result, inout bool needLinearToSRGB)
{
    switch (paramId)
    {
        case DEBUGVIEW_HAIR_BSDFDATA_MATERIAL_FEATURES:
            result = GetIndexColor(bsdfdata.materialFeatures);
            break;
        case DEBUGVIEW_HAIR_BSDFDATA_AMBIENT_OCCLUSION:
            result = bsdfdata.ambientOcclusion.xxx;
            break;
        case DEBUGVIEW_HAIR_BSDFDATA_SPECULAR_OCCLUSION:
            result = bsdfdata.specularOcclusion.xxx;
            break;
        case DEBUGVIEW_HAIR_BSDFDATA_DIFFUSE_COLOR:
            result = bsdfdata.diffuseColor;
            needLinearToSRGB = true;
            break;
        case DEBUGVIEW_HAIR_BSDFDATA_FRESNEL0:
            result = bsdfdata.fresnel0;
            break;
        case DEBUGVIEW_HAIR_BSDFDATA_SPECULAR_TINT:
            result = bsdfdata.specularTint;
            break;
        case DEBUGVIEW_HAIR_BSDFDATA_NORMAL_WS:
            result = bsdfdata.normalWS * 0.5 + 0.5;
            break;
        case DEBUGVIEW_HAIR_BSDFDATA_NORMAL_VIEW_SPACE:
            result = bsdfdata.normalWS * 0.5 + 0.5;
            break;
        case DEBUGVIEW_HAIR_BSDFDATA_GEOMETRIC_NORMAL:
            result = bsdfdata.geomNormalWS * 0.5 + 0.5;
            break;
        case DEBUGVIEW_HAIR_BSDFDATA_GEOMETRIC_NORMAL_VIEW_SPACE:
            result = bsdfdata.geomNormalWS * 0.5 + 0.5;
            break;
        case DEBUGVIEW_HAIR_BSDFDATA_PERCEPTUAL_ROUGHNESS:
            result = bsdfdata.perceptualRoughness.xxx;
            break;
        case DEBUGVIEW_HAIR_BSDFDATA_DIFFUSION_PROFILE:
            result = GetIndexColor(bsdfdata.diffusionProfile);
            break;
        case DEBUGVIEW_HAIR_BSDFDATA_SUBSURFACE_MASK:
            result = bsdfdata.subsurfaceMask.xxx;
            break;
        case DEBUGVIEW_HAIR_BSDFDATA_THICKNESS:
            result = bsdfdata.thickness.xxx;
            break;
        case DEBUGVIEW_HAIR_BSDFDATA_USE_THICK_OBJECT_MODE:
            result = (bsdfdata.useThickObjectMode) ? float3(1.0, 1.0, 1.0) : float3(0.0, 0.0, 0.0);
            break;
        case DEBUGVIEW_HAIR_BSDFDATA_TRANSMITTANCE:
            result = bsdfdata.transmittance;
            break;
        case DEBUGVIEW_HAIR_BSDFDATA_TANGENT_WS:
            result = bsdfdata.tangentWS * 0.5 + 0.5;
            break;
        case DEBUGVIEW_HAIR_BSDFDATA_BITANGENT_WS:
            result = bsdfdata.bitangentWS * 0.5 + 0.5;
            break;
        case DEBUGVIEW_HAIR_BSDFDATA_ROUGHNESS_T:
            result = bsdfdata.roughnessT.xxx;
            break;
        case DEBUGVIEW_HAIR_BSDFDATA_ROUGHNESS_B:
            result = bsdfdata.roughnessB.xxx;
            break;
        case DEBUGVIEW_HAIR_BSDFDATA_ANISOTROPY:
            result = bsdfdata.anisotropy.xxx;
            break;
        case DEBUGVIEW_HAIR_BSDFDATA_SECONDARY_PERCEPTUAL_ROUGHNESS:
            result = bsdfdata.secondaryPerceptualRoughness.xxx;
            break;
        case DEBUGVIEW_HAIR_BSDFDATA_SECONDARY_SPECULAR_TINT:
            result = bsdfdata.secondarySpecularTint;
            break;
        case DEBUGVIEW_HAIR_BSDFDATA_SPECULAR_EXPONENT:
            result = bsdfdata.specularExponent.xxx;
            break;
        case DEBUGVIEW_HAIR_BSDFDATA_SECONDARY_SPECULAR_EXPONENT:
            result = bsdfdata.secondarySpecularExponent.xxx;
            break;
        case DEBUGVIEW_HAIR_BSDFDATA_SPECULAR_SHIFT:
            result = bsdfdata.specularShift.xxx;
            break;
        case DEBUGVIEW_HAIR_BSDFDATA_SECONDARY_SPECULAR_SHIFT:
            result = bsdfdata.secondarySpecularShift.xxx;
            break;
    }
}


#endif
