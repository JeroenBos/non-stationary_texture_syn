#!/usr/bin/env bash
source scripts/env.sh

python test_recurrent.py \
           --dataroot ./datasets/$DATASET/$NUMBER/test \
           --name "$NUMBER"_"$DATASET"_style_"$STYLE" \
           --which_epoch $EPOCH \
           --model test \
           --which_model_netG resnet_2x_6blocks \
           --which_direction AtoB \
           --dataset_mode single \
           --norm batch \
           --resize_or_crop none \
           --no-print-network \
           --gpu_ids "$GPU_IDS" \
           --display_id "$DISPLAY_ID" \
           "$@"
