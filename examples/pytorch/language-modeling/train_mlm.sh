#!/bin/bash

#Train causal language model
python run_mlm.py \
    --model_name_or_path distilbert-base-uncased \
    --dataset_name wikitext \
    --dataset_config_name wikitext-2-raw-v1 \
    --per_device_train_batch_size 720 \
    --per_device_eval_batch_size 720 \
    --do_train \
    --do_eval \
    --overwrite_output_dir \
    --output_dir /tmp/test-mlm > training_logs/distilbert-base-uncased_moreh_xlarge512gb_bs720.txt