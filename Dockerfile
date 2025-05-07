# start from a clean base image (replace <version> with the desired release)
FROM runpod/worker-comfyui:5.0.0-base

# install custom nodes using comfy-cli
RUN comfy node install --mode=remote comfyui_essentials teacache comfyui-detail-daemon comfyui-post-processing-nodes skimmed_cfg was-node-suite-comfyui controlaltai-nodes

# download models using comfy-cli
# the "--filename" is what you use in your ComfyUI workflow

# Flux Setup
RUN comfy model download --url https://huggingface.co/Jehex/Jibv8/resolve/main/BEN_Merge_V8UV4.safetensors --relative-path models/unet --filename BEN_Merge_V8UV4.safetensors
RUN comfy model download --url https://huggingface.co/Jehex/Jibv8/resolve/main/ViT-L-14-GmP-SAE-FULL-model.safetensors --relative-path models/clip --filename ViT-L-14-GmP-SAE-FULL-model.safetensors
RUN comfy model download --url https://huggingface.co/Jehex/Jibv8/resolve/main/t5xxl_fp8_e4m3fn_scaled.safetensors --relative-path models/clip --filename t5xxl_fp8_e4m3fn_scaled.safetensors
RUN comfy model download --url https://huggingface.co/Jehex/Jibv8/resolve/main/ae.safetensors --relative-path models/vae --filename ae.safetensors

# Lora's
RUN comfy model download --url https://huggingface.co/Jehex/Jibv8/resolve/main/AliceBlanche_flux2_V1.safetensors --relative-path models/loras --filename alice-blanche.safetensors
RUN comfy model download --url https://huggingface.co/Jehex/Jibv8/resolve/main/AnnaSmirnov_flux2_V1_000004500.safetensors --relative-path models/loras --filename anna-smirnov.safetensors
RUN comfy model download --url https://huggingface.co/Jehex/Jibv8/resolve/main/AriaKelly_Lokr_v1_000004500.safetensors --relative-path models/loras --filename aria-kelly.safetensors
RUN comfy model download --url https://huggingface.co/Jehex/Jibv8/resolve/main/CharlotteDavis_flux2_V1_000004500.safetensors --relative-path models/loras --filename charlotte-davis.safetensors
RUN comfy model download --url https://huggingface.co/Jehex/Jibv8/resolve/main/ChloeWilliams_flux2_V1_000004500.safetensors --relative-path models/loras --filename chloe-williams.safetensors
RUN comfy model download --url https://huggingface.co/Jehex/Jibv8/resolve/main/ClaireMila_flux2_V1_000004500.safetensors --relative-path models/loras --filename claire-mila.safetensors
RUN comfy model download --url https://huggingface.co/Jehex/Jibv8/resolve/main/ElizabethJones_flux2_V1_000004500.safetensors --relative-path models/loras --filename elizabeth-jones.safetensors
RUN comfy model download --url https://huggingface.co/Jehex/Jibv8/resolve/main/EmilyMartin_flux2_V11_000004500.safetensors --relative-path models/loras --filename emilie-martin.safetensors
RUN comfy model download --url https://huggingface.co/Jehex/Jibv8/resolve/main/EvelynAddison_flux2_V1_000004500.safetensors --relative-path models/loras --filename evelyn-addison.safetensors
RUN comfy model download --url https://huggingface.co/Jehex/Jibv8/resolve/main/JaneRed_flux2_V1.safetensors --relative-path models/loras --filename jane-red.safetensors
RUN comfy model download --url https://huggingface.co/Jehex/Jibv8/resolve/main/MaryRose_flux2_V1_000004500.safetensors --relative-path models/loras --filename mary-rose.safetensors
RUN comfy model download --url https://huggingface.co/Jehex/Jibv8/resolve/main/NaluKalama_flux2_V1_000004500.safetensors --relative-path models/loras --filename nalu-kamala.safetensors
RUN comfy model download --url https://huggingface.co/Jehex/Jibv8/resolve/main/NatchaSaetang_flux2_V1_000004500.safetensors --relative-path models/loras --filename natcha-saetang.safetensors
RUN comfy model download --url https://huggingface.co/Jehex/Jibv8/resolve/main/OliviaDanielB_flux2_V1_000004500.safetensors --relative-path models/loras --filename olivia-daniel.safetensors
RUN comfy model download --url https://huggingface.co/Jehex/Jibv8/resolve/main/JulieStephani_V2_000005500.safetensors --relative-path models/loras --filename julie-stephani.safetensors
