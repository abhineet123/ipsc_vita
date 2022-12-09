<!-- MarkdownTOC -->

- [ipsc-all_frames_roi_g2_0_38](#ipsc_all_frames_roi_g2_0_38_)
    - [swin-coco       @ ipsc-all_frames_roi_g2_0_38](#swin_coco___ipsc_all_frames_roi_g2_0_3_8_)
        - [on-all_frames_roi_g2_39_53       @ swin-coco/ipsc-all_frames_roi_g2_0_38](#on_all_frames_roi_g2_39_53___swin_coco_ipsc_all_frames_roi_g2_0_3_8_)
    - [swin-ytvis2019       @ ipsc-all_frames_roi_g2_0_38](#swin_ytvis2019___ipsc_all_frames_roi_g2_0_3_8_)
        - [cc       @ swin-ytvis2019/ipsc-all_frames_roi_g2_0_38](#cc___swin_ytvis2019_ipsc_all_frames_roi_g2_0_38_)
    - [r50-coco       @ ipsc-all_frames_roi_g2_0_38](#r50_coco___ipsc_all_frames_roi_g2_0_3_8_)
        - [bs1       @ r50-coco/ipsc-all_frames_roi_g2_0_38](#bs1___r50_coco_ipsc_all_frames_roi_g2_0_38_)
        - [on-all_frames_roi_g2_39_53       @ r50-coco/ipsc-all_frames_roi_g2_0_38](#on_all_frames_roi_g2_39_53___r50_coco_ipsc_all_frames_roi_g2_0_38_)
    - [r50-ytvis2019       @ ipsc-all_frames_roi_g2_0_38](#r50_ytvis2019___ipsc_all_frames_roi_g2_0_3_8_)
        - [pc       @ r50-ytvis2019/ipsc-all_frames_roi_g2_0_38](#pc___r50_ytvis2019_ipsc_all_frames_roi_g2_0_3_8_)
        - [grs       @ r50-ytvis2019/ipsc-all_frames_roi_g2_0_38](#grs___r50_ytvis2019_ipsc_all_frames_roi_g2_0_3_8_)
    - [r101       @ ipsc-all_frames_roi_g2_0_38](#r101___ipsc_all_frames_roi_g2_0_3_8_)
        - [on-all_frames_roi_g2_39_53       @ r101/ipsc-all_frames_roi_g2_0_38](#on_all_frames_roi_g2_39_53___r101_ipsc_all_frames_roi_g2_0_38_)
- [ipsc-ext_reorg_roi_g2_0_38](#ipsc_ext_reorg_roi_g2_0_3_8_)
    - [swin-coco       @ ipsc-ext_reorg_roi_g2_0_38](#swin_coco___ipsc_ext_reorg_roi_g2_0_38_)
    - [r50-coco       @ ipsc-ext_reorg_roi_g2_0_38](#r50_coco___ipsc_ext_reorg_roi_g2_0_38_)
        - [bs1       @ r50-coco/ipsc-ext_reorg_roi_g2_0_38](#bs1___r50_coco_ipsc_ext_reorg_roi_g2_0_3_8_)
        - [on-g2_39_53       @ r50-coco/ipsc-ext_reorg_roi_g2_0_38](#on_g2_39_53___r50_coco_ipsc_ext_reorg_roi_g2_0_3_8_)
- [db3_2_to_17_except_6](#db3_2_to_17_except_6_)
    - [r50       @ db3_2_to_17_except_6](#r50___db3_2_to_17_except_6_)
        - [coco       @ r50/db3_2_to_17_except_6](#coco___r50_db3_2_to_17_except_6_)
        - [on-september_5_2020       @ r50/db3_2_to_17_except_6](#on_september_5_2020___r50_db3_2_to_17_except_6_)
        - [on-part1       @ r50/db3_2_to_17_except_6](#on_part1___r50_db3_2_to_17_except_6_)
    - [r101       @ db3_2_to_17_except_6](#r101___db3_2_to_17_except_6_)
        - [coco       @ r101/db3_2_to_17_except_6](#coco___r101_db3_2_to_17_except_6_)
        - [on-september_5_2020       @ r101/db3_2_to_17_except_6](#on_september_5_2020___r101_db3_2_to_17_except_6_)

<!-- /MarkdownTOC -->

<a id="ipsc_all_frames_roi_g2_0_38_"></a>
# ipsc-all_frames_roi_g2_0_38

<a id="swin_coco___ipsc_all_frames_roi_g2_0_3_8_"></a>
## swin-coco       @ ipsc-all_frames_roi_g2_0_38-->vita
salloc --nodes=1 --time=0:05:0 --account=def-nilanjan --gpus-per-node=1 --mem=16000M --cpus-per-task=4
salloc --nodes=1 --time=0:15:0 --account=def-nilanjan --gpus-per-node=2 --mem=16000M --cpus-per-task=4

sbatch cmd/vita-ipsc-all_frames_roi_g2_0_38_ytvis_swin.sh

python train_net_vita.py --num-gpus 2 --config-file configs/youtubevis_2019/vita-ipsc-all_frames_roi_g2_0_38-vita_SWIN_bs8.yaml MODEL.WEIGHTS pretrained/vita_swin_coco.pth SOLVER.IMS_PER_BATCH 4

<a id="on_all_frames_roi_g2_39_53___swin_coco_ipsc_all_frames_roi_g2_0_3_8_"></a>
### on-all_frames_roi_g2_39_53       @ swin-coco/ipsc-all_frames_roi_g2_0_38-->vita

python train_net_vita.py --config-file configs/youtubevis_2019/vita-ipsc-all_frames_roi_g2_0_38-vita_SWIN_bs8.yaml --num-gpus 1 --eval-only MODEL.WEIGHTS log/vita-ipsc-all_frames_roi_g2_0_38_swin/model_0059999.pth

<a id="swin_ytvis2019___ipsc_all_frames_roi_g2_0_3_8_"></a>
## swin-ytvis2019       @ ipsc-all_frames_roi_g2_0_38-->vita

python train_net_vita.py --num-gpus 2 --config-file configs/youtubevis_2019/vita-ipsc-all_frames_roi_g2_0_38-vita_SWIN_bs8.yaml MODEL.WEIGHTS pretrained/vita_swin_ytvis2019.pth SOLVER.IMS_PER_BATCH 2

<a id="cc___swin_ytvis2019_ipsc_all_frames_roi_g2_0_38_"></a>
### cc       @ swin-ytvis2019/ipsc-all_frames_roi_g2_0_38-->vita

python train_net_vita.py --num-gpus 2 --config-file configs/youtubevis_2019/vita-ipsc-all_frames_roi_g2_0_38-vita_SWIN_bs8.yaml MODEL.WEIGHTS pretrained/vita_swin_ytvis2019.pth SOLVER.IMS_PER_BATCH 4

<a id="r50_coco___ipsc_all_frames_roi_g2_0_3_8_"></a>
## r50-coco       @ ipsc-all_frames_roi_g2_0_38-->vita
<a id="bs1___r50_coco_ipsc_all_frames_roi_g2_0_38_"></a>
### bs1       @ r50-coco/ipsc-all_frames_roi_g2_0_38-->vita

python train_net_vita.py --num-gpus 1 --config-file configs/youtubevis_2019/vita-ipsc-all_frames_roi_g2_0_38-R50_bs8.yaml MODEL.WEIGHTS pretrained/R50_coco.pth SOLVER.IMS_PER_BATCH 1

__bs2__  

python train_net_vita.py --num-gpus 2 --config-file configs/youtubevis_2019/vita-ipsc-all_frames_roi_g2_0_38-R50_bs8.yaml MODEL.WEIGHTS pretrained/R50_coco.pth SOLVER.IMS_PER_BATCH 2

__bs4__   

python train_net_vita.py --num-gpus 2 --config-file configs/youtubevis_2019/vita-ipsc-all_frames_roi_g2_0_38-R50_bs8.yaml MODEL.WEIGHTS pretrained/R50_coco.pth SOLVER.IMS_PER_BATCH 4


<a id="on_all_frames_roi_g2_39_53___r50_coco_ipsc_all_frames_roi_g2_0_38_"></a>
### on-all_frames_roi_g2_39_53       @ r50-coco/ipsc-all_frames_roi_g2_0_38-->vita

python train_net_vita.py --config-file configs/youtubevis_2019/vita-ipsc-all_frames_roi_g2_0_38-R50_bs8.yaml --num-gpus 1 --eval-only MODEL.WEIGHTS log/vita-ipsc-all_frames_roi_g2_0_38_r50/model_0039999.pth


<a id="r50_ytvis2019___ipsc_all_frames_roi_g2_0_3_8_"></a>
## r50-ytvis2019       @ ipsc-all_frames_roi_g2_0_38-->vita
<a id="pc___r50_ytvis2019_ipsc_all_frames_roi_g2_0_3_8_"></a>
### pc       @ r50-ytvis2019/ipsc-all_frames_roi_g2_0_38-->vita

python train_net_vita.py --num-gpus 1 --config-file configs/youtubevis_2019/vita-ipsc-all_frames_roi_g2_0_38-R50_bs8.yaml MODEL.WEIGHTS pretrained/R50_ytvis2019.pth SOLVER.IMS_PER_BATCH 1

<a id="grs___r50_ytvis2019_ipsc_all_frames_roi_g2_0_3_8_"></a>
### grs       @ r50-ytvis2019/ipsc-all_frames_roi_g2_0_38-->vita

python train_net_vita.py --num-gpus 2 --config-file configs/youtubevis_2019/vita-ipsc-all_frames_roi_g2_0_38-R50_bs8.yaml MODEL.WEIGHTS pretrained/R50_ytvis2019.pth SOLVER.IMS_PER_BATCH 2

<a id="r101___ipsc_all_frames_roi_g2_0_3_8_"></a>
## r101       @ ipsc-all_frames_roi_g2_0_38-->vita

python train_net_vita.py --num-gpus 2 --config-file configs/youtubevis_2019/vita-ipsc-all_frames_roi_g2_0_38-R101_bs2.yaml

<a id="on_all_frames_roi_g2_39_53___r101_ipsc_all_frames_roi_g2_0_38_"></a>
### on-all_frames_roi_g2_39_53       @ r101/ipsc-all_frames_roi_g2_0_38-->vita

python train_net_vita.py --config-file configs/youtubevis_2019/vita-ipsc-all_frames_roi_g2_0_38-R101_bs2.yaml --num-gpus 1 --eval-only MODEL.WEIGHTS log/vita-ipsc-all_frames_roi_g2_0_38_r101/model_0129999.pth

<a id="ipsc_ext_reorg_roi_g2_0_3_8_"></a>
# ipsc-ext_reorg_roi_g2_0_38

<a id="swin_coco___ipsc_ext_reorg_roi_g2_0_38_"></a>
## swin-coco       @ ipsc-ext_reorg_roi_g2_0_38-->vita
salloc --nodes=1 --time=0:05:0 --account=def-nilanjan --gpus-per-node=1 --mem=16000M --cpus-per-task=4
salloc --nodes=1 --time=0:15:0 --account=def-nilanjan --gpus-per-node=2 --mem=16000M --cpus-per-task=4

sbatch cmd/vita-ipsc-ext_reorg_roi_g2_0_38_ytvis_swin.sh

python train_net_vita.py --num-gpus 2 --config-file configs/youtubevis_2019/vita-ipsc-ext_reorg_roi_g2_0_38-vita_SWIN_bs8.yaml MODEL.WEIGHTS pretrained/vita_swin_coco.pth SOLVER.IMS_PER_BATCH 2


<a id="r50_coco___ipsc_ext_reorg_roi_g2_0_38_"></a>
## r50-coco       @ ipsc-ext_reorg_roi_g2_0_38-->vita
<a id="bs1___r50_coco_ipsc_ext_reorg_roi_g2_0_3_8_"></a>
### bs1       @ r50-coco/ipsc-ext_reorg_roi_g2_0_38-->vita

python train_net_vita.py --num-gpus 1 --config-file configs/youtubevis_2019/vita-ipsc-ext_reorg_roi_g2_0_38-R50_bs8.yaml MODEL.WEIGHTS SOLVER.IMS_PER_BATCH 1

__bs2__  
python train_net_vita.py --num-gpus 2 --config-file configs/youtubevis_2019/vita-ipsc-ext_reorg_roi_g2_0_38-R50_bs8.yaml SOLVER.IMS_PER_BATCH 2

__bs4__ 
python train_net_vita.py --num-gpus 2 --config-file configs/youtubevis_2019/vita-ipsc-ext_reorg_roi_g2_0_38-R50_bs8.yaml SOLVER.IMS_PER_BATCH 4

<a id="on_g2_39_53___r50_coco_ipsc_ext_reorg_roi_g2_0_3_8_"></a>
### on-g2_39_53       @ r50-coco/ipsc-ext_reorg_roi_g2_0_38-->vita
python train_net_vita.py --config-file configs/youtubevis_2019/vita-ipsc-ext_reorg_roi_g2_0_38-R50_bs8.yaml --num-gpus 1 --eval-only MODEL.WEIGHTS log/vita-ipsc-ext_reorg_roi_g2_0_38_r50/model_0049999.pth

<a id="db3_2_to_17_except_6_"></a>
# db3_2_to_17_except_6
<a id="r50___db3_2_to_17_except_6_"></a>
## r50       @ db3_2_to_17_except_6-->vita
<a id="coco___r50_db3_2_to_17_except_6_"></a>
### coco       @ r50/db3_2_to_17_except_6-->vita
python train_net_vita.py --num-gpus 2 --config-file configs/youtubevis_2019/vita-db3_2_to_17_except_6-R50_bs2.yaml MODEL.WEIGHTS pretrained/R50_coco.pth SOLVER.IMS_PER_BATCH 2

<a id="on_september_5_2020___r50_db3_2_to_17_except_6_"></a>
### on-september_5_2020       @ r50/db3_2_to_17_except_6-->vita
PYTORCH_NO_CUDA_MEMORY_CACHING=1 CUDA_VISIBLE_DEVICES=0 python train_net_vita.py --config-file configs/youtubevis_2019/vita-db3_2_to_17_except_6-R50_bs2.yaml --num-gpus 1 --eval-only MODEL.WEIGHTS log/db3_2_to_17_except_6-R50/model_0139999.pth

<a id="on_part1___r50_db3_2_to_17_except_6_"></a>
### on-part1       @ r50/db3_2_to_17_except_6-->vita
PYTORCH_NO_CUDA_MEMORY_CACHING=1 CUDA_VISIBLE_DEVICES=0 python train_net_vita.py --config-file configs/youtubevis_2019/vita-db3_2_to_17_except_6-R50_bs2.yaml --num-gpus 1 --eval-only MODEL.WEIGHTS log/db3_2_to_17_except_6-R50/model_0139999.pth


<a id="r101___db3_2_to_17_except_6_"></a>
## r101       @ db3_2_to_17_except_6-->vita
<a id="coco___r101_db3_2_to_17_except_6_"></a>
### coco       @ r101/db3_2_to_17_except_6-->vita
python train_net_vita.py --num-gpus 2 --config-file configs/youtubevis_2019/vita-db3_2_to_17_except_6-R101_bs2.yaml MODEL.WEIGHTS pretrained/R101_coco.pth SOLVER.IMS_PER_BATCH 2

<a id="on_september_5_2020___r101_db3_2_to_17_except_6_"></a>
### on-september_5_2020       @ r101/db3_2_to_17_except_6-->vita
PYTORCH_NO_CUDA_MEMORY_CACHING=1 CUDA_VISIBLE_DEVICES=1 python train_net_vita.py --config-file configs/youtubevis_2019/vita-db3_2_to_17_except_6-R101_bs2.yaml --num-gpus 1 --eval-only MODEL.WEIGHTS log/db3_2_to_17_except_6-R101/model_0134999.pth














