python run_translation.py \
    --model_name_or_path t5-large \
    --do_train \
    --source_lang en \
    --target_lang ro \
    --source_prefix "translate English to Romanian: " \
    --dataset_name wmt16 \
    --dataset_config_name ro-en \
    --output_dir /tmp/tst-translation \
    --per_device_train_batch_size 20 \
    --overwrite_output_dir \
    --predict_with_generate \
    --num_train_epochs 1 \
    --max_train_samples 10000 \
    --predict_with_generate > training_logs/t5-large_bs20.text