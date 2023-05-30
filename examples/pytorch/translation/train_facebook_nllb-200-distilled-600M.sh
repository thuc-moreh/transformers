MODEL=facebook/nllb-200-distilled-600M
BATCH_SIZE=20
python run_translation.py \
    --model_name_or_path ${MODEL} \
    --do_train \
    --source_lang en \
    --target_lang ro \
    --dataset_name wmt16 \
    --dataset_config_name ro-en \
    --output_dir /tmp/tst-translation \
    --per_device_train_batch_size ${BATCH_SIZE} \
    --overwrite_output_dir \
    --num_train_epochs 3 \
    --max_train_samples 5000 \
    --predict_with_generate > training_logs/facebook_nllb-200-distilled-600M_bs30 \
    --seed 1337