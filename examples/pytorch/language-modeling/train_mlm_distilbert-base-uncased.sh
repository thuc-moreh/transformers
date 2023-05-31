#!/bin/bash
##    SETTINGS     ## 
MODEL=distilbert-base-uncased
function mydate {
    date +'%Y-%m-%d_%H:%M:%S'
}
## END OF SETTINGS ## 

BATCH_SIZE=150

LOG_FILE=${MODEL}_$(mydate)

#Train causal language model
python run_mlm.py \
    --model_name_or_path ${MODEL} \
    --dataset_name wikitext \
    --dataset_config_name wikitext-2-raw-v1 \
    --per_device_train_batch_size ${BATCH_SIZE} \
    --do_train \
    --output_dir /tmp/test-clm \
    --overwrite_output_dir > training_logs/${LOG_FILE} \
    --seed 1337
python upload_s3.py training_logs/${LOG_FILE}