#!/bin/bash

#Train causal language model
python run_mlm.py \
    --model_name_or_path facebook/bart-large\
    --dataset_name wikitext \
    --dataset_config_name wikitext-2-raw-v1 \
    --per_device_train_batch_size 3 \
    --per_device_eval_batch_size 3 \
    --do_train \
    --do_eval \
    --overwrite_output_dir \
    --output_dir /tmp/test-mlm > training_logs/facebook-bart-large_moreh_medium128g_bs3.txt