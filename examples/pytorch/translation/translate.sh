python run_translation.py \
    --model_name_or_path facebook/bart-large-mnli \
    --do_train \
    --source_lang en \
    --target_lang ro \
    --dataset_name wmt16 \
    --dataset_config_name ro-en \
    --output_dir /tmp/tst-translation \
    --per_device_train_batch_size 256 \
    --overwrite_output_dir \
    --num_train_epochs 3 \
    --max_train_samples 10000 \
    --predict_with_generate > training_logs/facebook-bart-large-mnli_moreh__medium128g_bs256.text