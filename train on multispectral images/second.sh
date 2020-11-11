python train.py \
--save_mode 'epoch' \
--save_by_epoch 10 \
--save_by_iter 10000 \
--save_path './models' \
--sample_path './samples' \
--load_name './models/SCGAN_noGAN_epoch10_bs8.pth' \
--global_feature_network_path './trained_models/vgg16_bn_fc_gray_epoch150_bs256.pth' \
--perceptual_path './trained_models/vgg16_pretrained.pth' \
--multi_gpu True \
--cudnn_benchmark True \
--epochs 30 \
--train_batch_size 8 \
--val_batch_size 1 \
--lr_g 1e-4 \
--lr_d 1e-4 \
--b1 0.5 \
--b2 0.999 \
--weight_decay 0 \
--lr_decrease_mode 'epoch' \
--lr_decrease_epoch 10 \
--lr_decrease_iter 100000 \
--lr_decrease_factor 0.5 \
--num_workers 8 \
--gan_mode 'WGANGP' \
--lambda_l1 1 \
--lambda_attn 0.5 \
--lambda_percep 5 \
--lambda_gan 0.05 \
--lambda_gp 10 \
--pad 'reflect' \
--activ_g 'lrelu' \
--activ_d 'lrelu' \
--norm_g 'bn' \
--norm_d 'bn' \
--init_type 'xavier' \
--init_gain 0.02 \
--baseroot_rgb './dataset/ILSVRC2012_train_256' \
--baseroot_sal './dataset/ILSVRC2012_train_256_saliencymap' \
--crop_size 256 \
--smaller_coeff 10 \
