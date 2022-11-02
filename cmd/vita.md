<!-- MarkdownTOC -->

- [ipsc-all_frames_roi_g2_0_38](#ipsc_all_frames_roi_g2_0_38_)
    - [swin       @ ipsc-all_frames_roi_g2_0_38](#swin___ipsc_all_frames_roi_g2_0_3_8_)
        - [coco       @ swin/ipsc-all_frames_roi_g2_0_38](#coco___swin_ipsc_all_frames_roi_g2_0_38_)
        - [ytvis2019       @ swin/ipsc-all_frames_roi_g2_0_38](#ytvis2019___swin_ipsc_all_frames_roi_g2_0_38_)
            - [cc       @ ytvis2019/swin/ipsc-all_frames_roi_g2_0_38](#cc___ytvis2019_swin_ipsc_all_frames_roi_g2_0_38_)
    - [r50       @ ipsc-all_frames_roi_g2_0_38](#r50___ipsc_all_frames_roi_g2_0_3_8_)
        - [coco       @ r50/ipsc-all_frames_roi_g2_0_38](#coco___r50_ipsc_all_frames_roi_g2_0_3_8_)
            - [bs1       @ coco/r50/ipsc-all_frames_roi_g2_0_38](#bs1___coco_r50_ipsc_all_frames_roi_g2_0_38_)
            - [bs2       @ coco/r50/ipsc-all_frames_roi_g2_0_38](#bs2___coco_r50_ipsc_all_frames_roi_g2_0_38_)
            - [bs4       @ coco/r50/ipsc-all_frames_roi_g2_0_38](#bs4___coco_r50_ipsc_all_frames_roi_g2_0_38_)
        - [ytvis2019       @ r50/ipsc-all_frames_roi_g2_0_38](#ytvis2019___r50_ipsc_all_frames_roi_g2_0_3_8_)
            - [pc       @ ytvis2019/r50/ipsc-all_frames_roi_g2_0_38](#pc___ytvis2019_r50_ipsc_all_frames_roi_g2_0_3_8_)
            - [grs       @ ytvis2019/r50/ipsc-all_frames_roi_g2_0_38](#grs___ytvis2019_r50_ipsc_all_frames_roi_g2_0_3_8_)
- [db3_2_to_17_except_6](#db3_2_to_17_except_6_)
    - [r50       @ db3_2_to_17_except_6](#r50___db3_2_to_17_except_6_)
        - [coco       @ r50/db3_2_to_17_except_6](#coco___r50_db3_2_to_17_except_6_)

<!-- /MarkdownTOC -->

<a id="ipsc_all_frames_roi_g2_0_38_"></a>
# ipsc-all_frames_roi_g2_0_38

<a id="swin___ipsc_all_frames_roi_g2_0_3_8_"></a>
## swin       @ ipsc-all_frames_roi_g2_0_38-->vita

<a id="coco___swin_ipsc_all_frames_roi_g2_0_38_"></a>
### coco       @ swin/ipsc-all_frames_roi_g2_0_38-->vita
salloc --nodes=1 --time=0:05:0 --account=def-nilanjan --gpus-per-node=1 --mem=16000M --cpus-per-task=4
salloc --nodes=1 --time=0:15:0 --account=def-nilanjan --gpus-per-node=2 --mem=16000M --cpus-per-task=4

sbatch cmd/vita-ipsc-all_frames_roi_g2_0_38_ytvis_swin.sh

python train_net_vita.py --num-gpus 2 --config-file configs/youtubevis_2019/ipsc-all_frames_roi_g2_0_38-vita_SWIN_bs8.yaml MODEL.WEIGHTS pretrained/vita_swin_coco.pth SOLVER.IMS_PER_BATCH 4

<a id="ytvis2019___swin_ipsc_all_frames_roi_g2_0_38_"></a>
### ytvis2019       @ swin/ipsc-all_frames_roi_g2_0_38-->vita
python train_net_vita.py --num-gpus 2 --config-file configs/youtubevis_2019/ipsc-all_frames_roi_g2_0_38-vita_SWIN_bs8.yaml MODEL.WEIGHTS pretrained/vita_swin_ytvis2019.pth SOLVER.IMS_PER_BATCH 2

<a id="cc___ytvis2019_swin_ipsc_all_frames_roi_g2_0_38_"></a>
#### cc       @ ytvis2019/swin/ipsc-all_frames_roi_g2_0_38-->vita
python train_net_vita.py --num-gpus 2 --config-file configs/youtubevis_2019/ipsc-all_frames_roi_g2_0_38-vita_SWIN_bs8.yaml MODEL.WEIGHTS pretrained/vita_swin_ytvis2019.pth SOLVER.IMS_PER_BATCH 4

<a id="r50___ipsc_all_frames_roi_g2_0_3_8_"></a>
## r50       @ ipsc-all_frames_roi_g2_0_38-->vita

<a id="coco___r50_ipsc_all_frames_roi_g2_0_3_8_"></a>
### coco       @ r50/ipsc-all_frames_roi_g2_0_38-->vita

<a id="bs1___coco_r50_ipsc_all_frames_roi_g2_0_38_"></a>
#### bs1       @ coco/r50/ipsc-all_frames_roi_g2_0_38-->vita
python train_net_vita.py --num-gpus 1 --config-file configs/youtubevis_2019/ipsc-all_frames_roi_g2_0_38-vita_R50_bs8.yaml MODEL.WEIGHTS pretrained/vita_r50_coco.pth SOLVER.IMS_PER_BATCH 1

<a id="bs2___coco_r50_ipsc_all_frames_roi_g2_0_38_"></a>
#### bs2       @ coco/r50/ipsc-all_frames_roi_g2_0_38-->vita
python train_net_vita.py --num-gpus 2 --config-file configs/youtubevis_2019/ipsc-all_frames_roi_g2_0_38-vita_R50_bs8.yaml MODEL.WEIGHTS pretrained/vita_r50_coco.pth SOLVER.IMS_PER_BATCH 2

<a id="bs4___coco_r50_ipsc_all_frames_roi_g2_0_38_"></a>
#### bs4       @ coco/r50/ipsc-all_frames_roi_g2_0_38-->vita
python train_net_vita.py --num-gpus 2 --config-file configs/youtubevis_2019/ipsc-all_frames_roi_g2_0_38-vita_R50_bs8.yaml MODEL.WEIGHTS pretrained/vita_r50_coco.pth SOLVER.IMS_PER_BATCH 4

<a id="ytvis2019___r50_ipsc_all_frames_roi_g2_0_3_8_"></a>
### ytvis2019       @ r50/ipsc-all_frames_roi_g2_0_38-->vita

<a id="pc___ytvis2019_r50_ipsc_all_frames_roi_g2_0_3_8_"></a>
#### pc       @ ytvis2019/r50/ipsc-all_frames_roi_g2_0_38-->vita
python train_net_vita.py --num-gpus 1 --config-file configs/youtubevis_2019/ipsc-all_frames_roi_g2_0_38-vita_R50_bs8.yaml MODEL.WEIGHTS pretrained/vita_r50_ytvis2019.pth SOLVER.IMS_PER_BATCH 1

<a id="grs___ytvis2019_r50_ipsc_all_frames_roi_g2_0_3_8_"></a>
#### grs       @ ytvis2019/r50/ipsc-all_frames_roi_g2_0_38-->vita
python train_net_vita.py --num-gpus 2 --config-file configs/youtubevis_2019/ipsc-all_frames_roi_g2_0_38-vita_R50_bs8.yaml MODEL.WEIGHTS pretrained/vita_r50_ytvis2019.pth SOLVER.IMS_PER_BATCH 2


<a id="db3_2_to_17_except_6_"></a>
# db3_2_to_17_except_6
<a id="r50___db3_2_to_17_except_6_"></a>
## r50       @ db3_2_to_17_except_6-->vita

<a id="coco___r50_db3_2_to_17_except_6_"></a>
### coco       @ r50/db3_2_to_17_except_6-->vita
python train_net_vita.py --num-gpus 2 --config-file configs/youtubevis_2019/ipsc-all_frames_roi_g2_0_38-vita_R50_bs8.yaml MODEL.WEIGHTS pretrained/vita_r50_coco.pth SOLVER.IMS_PER_BATCH 2













