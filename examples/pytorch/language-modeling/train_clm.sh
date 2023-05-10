#!/bin/bash
MODEL=openai-gpt
alias mydate="date  +'%Y-%m-%d_%H:%M:%S'"
BATCH_SIZE=32
LOG_FILE=${MODEL}_moreh_medium128g_bs${BATCH_SIZE}.log

#Train causal language model
python run_clm.py \
    --model_name_or_path ${MODEL} \
    --dataset_name wikitext \
    --dataset_config_name wikitext-2-raw-v1 \
    --per_device_train_batch_size ${BATCH_SIZE} \
    --do_train \
    --output_dir /tmp/test-clm \
    --overwrite_output_dir > training_logs/${LOG_FILE}
    
    






