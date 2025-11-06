#!/bin/bash

MODEL_FLAGS="--attention_resolutions 32,16,8 --class_cond False --diffusion_steps 1000 --dropout 0.1 --image_size 256 --learn_sigma True --noise_schedule linear --num_channels 256 --num_head_channels 64 --num_res_blocks 2 --resblock_updown True --use_fp16 True --use_scale_shift_norm True"

EXPERIMENTS=(
    "/work/ddpm-segmentation/experiments/horse_21/ddpm_defocus_blur_severity1.json"
    "/work/ddpm-segmentation/experiments/horse_21/ddpm_defocus_blur_severity3.json"
    "/work/ddpm-segmentation/experiments/horse_21/ddpm_defocus_blur_severity5.json"
)

for EXP in "${EXPERIMENTS[@]}"; do
    echo "============================="
    echo "Kører eksperiment: $EXP"
    python /work/ddpm-segmentation/train_interpreter.py --exp "$EXP" $MODEL_FLAGS
done
