#!/usr/bin/env bash
source scripts/env.sh

python test_recurrent.py \
           --dataroot ./datasets/$DATASET/test \
           --results_dir ./datasets/"$DATASET"/results \
           --name "$DATASET"_"$STYLE" \
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
           --display_host "$DISPLAY_HOST"
