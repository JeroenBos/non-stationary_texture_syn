#!/usr/bin/env bash
source ./scripts/env.sh

python test.py \
              --dataroot ./datasets/"$DATASET" \
              --results_dir ./datasets/"$DATASET"/results \
              --name "$DATASET"_"$STYLE" \
              --model test \
              --which_epoch "$EPOCH" \
              --which_model_netG resnet_2x_6blocks \
              --which_direction AtoB \
              --dataset_mode single \
              --norm batch \
              --resize_or_crop none \
              --fineSize 256 \
              --no-print-network \
              --gpu_ids "$GPU_IDS" \
              --display_id "$DISPLAY_ID" \
              --display_host "$DISPLAY_HOST" \
              --ntest 1
