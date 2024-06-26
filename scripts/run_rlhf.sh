python -m src.rlhf \
    --train_dataset_path "trivia_qa-rc.wikipedia.nocontext-train-balanced10x1000.csv"  \
    --val_dataset_path "trivia_qa-rc.wikipedia.nocontext-validation-balanced10x100.csv" \
    --score_lambda 0.1 \
    --save_root "/content/drive/MyDrive/project/" \
    --log_with "wandb" \
    --model_name "triviaqa-sft-balanced10x1000-06.02-20" \
    --remove_unused_columns False \
    --tracker_project_name "llm-calib" \
    --mini_batch_size 4 \
    --gradient_accumulation_steps 8 \
    --optimize_cuda_cache True \
    --model_name_or_path "triviaqa-sft-balanced10x1000/checkpoint-200-merged" \
    --torch_dtype "bfloat16" \
    --attn_implementation "flash_attention_2" \
    --use_peft \
    --lora_target_modules "q_proj" "k_proj" "v_proj" "o_proj" "gate_proj" "up_proj" "down_proj"
