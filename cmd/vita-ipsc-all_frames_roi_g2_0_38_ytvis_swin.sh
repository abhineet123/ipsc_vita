#!/bin/bash
#SBATCH --account=def-nilanjan
#SBATCH --nodes=1
#SBATCH --mem=16000M
#SBATCH --gpus-per-node=2
#SBATCH --cpus-per-task=4

#SBATCH --job-name=ipsc-all_frames_roi_g2_0_38_ytvis_swinL
#SBATCH --output=%x_%j.out

#SBATCH --time=0-15:00            # time (DD-HH:MM)

#SBATCH --mail-user=asingh1@ualberta.ca
#SBATCH --mail-type=ALL

module load cuda cudnn gcc python/3.8

source vita/bin/activate

cp -r mask2former/modeling/pixel_decoder/ops ~/
cd ~/ops/
python3 setup.py build install

cd ~/ipsc_vita

nvidia-smi

python train_net_vita.py --num-gpus 2 --config-file configs/youtubevis_2019/ipsc-all_frames_roi_g2_0_38-vita_SWIN_bs8.yaml MODEL.WEIGHTS pretrained/vita_swin_ytvis2019.pth SOLVER.IMS_PER_BATCH=4



