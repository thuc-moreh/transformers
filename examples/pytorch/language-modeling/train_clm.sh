#!/bin/bash

#Train causal language model
python run_clm.py \
    --model_name_or_path gpt2 \
    --dataset_name wikitext \
    --dataset_config_name wikitext-2-raw-v1 \
    --per_device_train_batch_size 128 \
    --per_device_eval_batch_size 128 \
    --do_train \
    --do_eval \
    --do_predict \
    --overwrite_output_dir \
    --output_dir /tmp/test-clm 
    # --optim adamw_anyprecision \
    # --optim_args "momentum_dtype=bf1oat16"
    






