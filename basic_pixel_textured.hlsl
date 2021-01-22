#include "types.hlsl"

SamplerState main_sampler;

Texture2D albedo_map : register(t0);

float4 main(PS_INPUT input) : SV_Target {
    float4 output_color = input.color * albedo_map.Sample(main_sampler, input.texcoord.xy) * model_color;
    return output_color;
}