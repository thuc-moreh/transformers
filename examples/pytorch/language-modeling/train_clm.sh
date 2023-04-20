#!/bin/bash

#Train causal language model
python run_clm.py \
    --model_name_or_path distilgpt2 \
    --dataset_name wikitext \
    --dataset_config_name wikitext-2-raw-v1 \
    --per_device_train_batch_size 8 \
    --per_device_eval_batch_size 8 \
    --do_train \
    --do_eval \
    --do_predict \
    --output_dir /tmp/test-clm \
    --overwrite_output_dir > training_logs/distilgpt2_moreh_medium128g_bs8.txt
    
    






