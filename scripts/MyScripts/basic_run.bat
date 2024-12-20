SET model_name=CycleNet

SET root_path_name="E:/Data/CycleNetTimeSeries/"
SET data_path_name=ETTh1.csv
SET model_id_name=ETTh1
SET data_name=ETTh1


SET model_type=linear
SET seq_len=336

SET pred_len=96
SET random_seed=2024

python -u run.py ^
      --is_training 1 ^
      --root_path %root_path_name% ^
      --data_path %data_path_name% ^
      --model_id %model_id_name%_%seq_len%_%pred_len% ^
      --model %model_name% ^
      --data %data_name% ^
      --features M ^
      --seq_len %seq_len% ^
      --pred_len %pred_len% ^
      --enc_in 7 ^
      --cycle 24 ^
      --model_type %model_type% ^
      --train_epochs 30 ^
      --patience 5 ^
      --itr 1 --batch_size 256 --learning_rate 0.005 --random_seed %random_seed%
	  