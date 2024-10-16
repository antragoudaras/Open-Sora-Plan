#!/bin/bash

CUDA_VISIBLE_DEVICES=0 python opensora/sample/sample_t2v.py \
    --model_path /scratch-shared/scur2277/Open-Sora-Plan-v1.2.0/29x720p \
    --num_frames 29 \
    --height 480 \
    --width 640 \
    --cache_dir "./cache_dir" \
    --text_encoder_name /scratch-shared/scur2277/mt5-xxl \
    --text_prompt examples/text_prompt_ball_fall.txt \
    --ae CausalVAEModel_D4_4x8x8 \
    --ae_path "/scratch-shared/scur2277/Open-Sora-Plan-v1.2.0/vae" \
    --save_img_path "./sample_fall_ball_29x720p_cfg7.5_step100" \
    --fps 24 \
    --guidance_scale 7.5 \
    --num_sampling_steps 100 \
    --enable_tiling \
    --max_sequence_length 512 \
    --sample_method EulerAncestralDiscrete \
    --model_type "dit"