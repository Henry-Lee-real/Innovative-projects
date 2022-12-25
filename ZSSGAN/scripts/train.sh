CUDA_VISIBLE_DEVICES=1 python train.py  \
                --batch 2  --dataset "ffhq" \
                --n_sample 4 --output_dir "output" \
                --lr 0.002 \
                --frozen_gen_ckpt ../weights/stylegan2-ffhq-config-f.pt \
                --psp_path ../weights/psp_weights/e4e_ffhq_encode.pt \
                --iter 301 \
                --source_class "photo" \
                --target_class "248727-00.png" \
                --source_type "mean" \
                --auto_layer_k 18 \
                --auto_layer_iters 0 --auto_layer_batch 8 \
                --output_interval 50 \
                --mixing 0.0 \
                --save_interval 300 \
                --clip_models  "ViT-B/32" "ViT-B/16" \
                --psp_loss_type "dynamic" \
                --clip_model_weights 1.0 1.0 \
                --psp_model_weight 7 \
                --num_keep_first 7 \
                --psp_alpha 0.8 \
                --lambda_direction 1.0 \
                --lambda_partial 1.5 \
                --sliding_window_size 30 \
                --style_img_dir ../reference_images/FFHQ/248727-00.png \