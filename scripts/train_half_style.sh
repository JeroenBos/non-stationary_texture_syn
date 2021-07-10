#!/usr/bin/env bash
source scripts/env.sh

python train.py --dataroot ./datasets/$DATASET/$NUMBER \
                --name "$NUMBER"_"$DATASET"_style_"$STYLE" \
                --use_style \
                --no_flip \
                --no_lsgan \
                --padding_type replicate \
                --model half_style \
                --which_model_netG resnet_2x_6blocks \
                --which_model_netD n_layers \
                --n_layers_D 4 \
                --which_direction AtoB \
                --lambda_A 100 \
                --dataset_mode half_crop \
                --norm batch \
                --pool_size 0 \
                --resize_or_crop no \
                --niter_decay 50000 \
                --niter 50000 \
                --save_epoch_freq 2000 \
                --no-print-network \
                --gpu_ids "$GPU_IDS" \
                --display_freq 2 \
                --display_host "$DISPLAY_HOST" \
                --display_id "$DISPLAY_ID"
