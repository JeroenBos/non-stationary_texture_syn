#!/usr/bin/env bash
source ./scripts/env.sh

python test.py \
              --dataroot ./datasets/fake \
              --name "$NUMBER_$DATASET_30x30" \
              --model test \
              --which_epoch "$EPOCH" \
              --which_model_netG resnet_2x_6blocks \
              --which_direction AtoB \
              --dataset_mode single \
              --norm batch \
              --resize_or_crop none \
              --fineSize 256 \
              --gpu_ids "$GPU_IDS" \
              "$@"
