export TASK_NAME=mrpc
python run_glue.py \
   --model_name_or_path camembert-base \
   --dataset_name imdb \
   --tokenizer_name camembert-base \
   --task_name $TASK_NAME \
   --do_train \
   --max_seq_length 64 \
   --per_device_train_batch_size 4 \
   --learning_rate 2e-5 \
   --num_train_epochs 1 \
   --output_dir cls_checkpoints \
   --overwrite_output_dir \
   --fp16