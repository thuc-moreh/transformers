#!/bin/bash
##    SETTINGS     ## 
MODEL=t5-base
function mydate {
    date +'%Y-%m-%d_%H:%M:%S'
}
## END OF SETTINGS ## 

BATCH_SIZE=200

LOG_FILE=${MODEL}_$(mydate)

#Train causal language model
python run_translation.py \
    --model_name_or_path ${MODEL} \
    --do_train \
    --source_lang en \
    --target_lang ro \
    --source_prefix "translate English to Romanian: " \
    --dataset_name wmt16 \
    --dataset_config_name ro-en \
    --output_dir /tmp/tst-translation \
    --per_device_train_batch_size ${BATCH_SIZE} \
    --overwrite_output_dir \
    --num_train_epochs 3 \
    --max_train_samples 5000 \
    --predict_with_generate > training_logs/${LOG_FILE} \
    --seed 1337
# python upload_s3.py training_logs/${LOG_FILE}