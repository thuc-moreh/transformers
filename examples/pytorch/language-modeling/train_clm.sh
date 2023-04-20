#!/bin/bash

#Train causal language model
python run_clm.py \
    --model_name_or_path openai-gpt \
    --dataset_name wikitext \
    --dataset_config_name wikitext-2-raw-v1 \
    --per_device_train_batch_size 32 \
    --per_device_eval_batch_size 32 \
    --do_train \
    --do_eval \
    --do_predict \
    --output_dir /tmp/test-clm \
    --overwrite_output_dir > training_logs/openai-gpt_moreh_medium128g_bs32.txt
    
    






