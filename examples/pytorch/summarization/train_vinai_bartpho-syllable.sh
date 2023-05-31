python run_summarization.py \
    --model_name_or_path vinai/bartpho-syllable \
    --do_train \
    --dataset_name cnn_dailymail \
    --dataset_config "3.0.0" \
    --output_dir /tmp/tst-summarization \
    --per_device_train_batch_size=4 \
    --overwrite_output_dir \
    --max_source_length=128