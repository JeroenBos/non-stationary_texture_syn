source scripts/env.sh

python cnn-vis.py \
              --dataroot ./datasets/$DATASET/$NUMBER/test \
              --name "$NUMBER_$DATASET_style_14x14" \
              --which_epoch "$EPOCH" \
              --model test \
              --which_model_netG resnet_2x_6blocks \
              --which_direction AtoB \
              --dataset_mode single \
              --norm batch \
              --resize_or_crop none \
              --gpu_ids "$GPU_IDS" \
              "$@"
