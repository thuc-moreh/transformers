#!/bin/bash

##Prepare data
python scripts/binarized_data.py    --file_path data/dump.txt    --tokenizer_type roberta    --tokenizer_name roberta-base     --dump_file data/binarized_text

python scripts/token_counts.py \
    --data_file data/binarized_text.roberta-base.pickle \
    --token_counts_dump data/token_counts.roberta-base.pickle \
    --vocab_size 50265
    
##Train model
python train.py \
    --student_type roberta \
    --student_config training_configs/distilroberta-base.json \
    --teacher_type roberta \
    --teacher_name distilroberta-base \
    --alpha_ce 5.0 --alpha_mlm 2.0 --alpha_cos 1.0 --alpha_clm 0.0 --mlm \
    --freeze_pos_embs \
    --dump_path serialization_dir/my_first_training \
    --data_file data/binarized_text.roberta-base.pickle \
    --token_counts data/token_counts.roberta-base.pickle \
    --force # overwrites the `dump_path` if it already exists.