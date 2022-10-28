<!-- MarkdownTOC -->

- [ipsc-all_frames_roi_g2_0_38](#ipsc_all_frames_roi_g2_0_38_)
    - [swin       @ ipsc-all_frames_roi_g2_0_38](#swin___ipsc_all_frames_roi_g2_0_3_8_)
        - [coco       @ swin/ipsc-all_frames_roi_g2_0_38](#coco___swin_ipsc_all_frames_roi_g2_0_38_)
        - [ytvis2019       @ swin/ipsc-all_frames_roi_g2_0_38](#ytvis2019___swin_ipsc_all_frames_roi_g2_0_38_)
            - [cc       @ ytvis2019/swin/ipsc-all_frames_roi_g2_0_38](#cc___ytvis2019_swin_ipsc_all_frames_roi_g2_0_38_)
    - [r50       @ ipsc-all_frames_roi_g2_0_38](#r50___ipsc_all_frames_roi_g2_0_3_8_)
        - [coco       @ r50/ipsc-all_frames_roi_g2_0_38](#coco___r50_ipsc_all_frames_roi_g2_0_3_8_)
        - [ytvis2019       @ r50/ipsc-all_frames_roi_g2_0_38](#ytvis2019___r50_ipsc_all_frames_roi_g2_0_3_8_)

<!-- /MarkdownTOC -->

<a id="ipsc_all_frames_roi_g2_0_38_"></a>
# ipsc-all_frames_roi_g2_0_38

<a id="swin___ipsc_all_frames_roi_g2_0_3_8_"></a>
## swin       @ ipsc-all_frames_roi_g2_0_38-->vita
<a id="coco___swin_ipsc_all_frames_roi_g2_0_38_"></a>
### coco       @ swin/ipsc-all_frames_roi_g2_0_38-->vita
python train_net_vita.py --num-gpus 1 --config-file configs/youtubevis_2019/ipsc-all_frames_roi_g2_0_38-vita_SWIN_bs8.yaml MODEL.WEIGHTS pretrained/vita_swin_coco.pth

<a id="ytvis2019___swin_ipsc_all_frames_roi_g2_0_38_"></a>
### ytvis2019       @ swin/ipsc-all_frames_roi_g2_0_38-->vita
python train_net_vita.py --num-gpus 1 --config-file configs/youtubevis_2019/ipsc-all_frames_roi_g2_0_38-vita_SWIN_bs8.yaml MODEL.WEIGHTS pretrained/vita_swin_ytvis2019.pth

<a id="cc___ytvis2019_swin_ipsc_all_frames_roi_g2_0_38_"></a>
#### cc       @ ytvis2019/swin/ipsc-all_frames_roi_g2_0_38-->vita
python train_net_vita.py --num-gpus 2 --config-file configs/youtubevis_2019/ipsc-all_frames_roi_g2_0_38-vita_SWIN_bs8.yaml MODEL.WEIGHTS pretrained/vita_swin_ytvis2019.pth SOLVER.IMS_PER_BATCH=4

<a id="r50___ipsc_all_frames_roi_g2_0_3_8_"></a>
## r50       @ ipsc-all_frames_roi_g2_0_38-->vita
<a id="coco___r50_ipsc_all_frames_roi_g2_0_3_8_"></a>
### coco       @ r50/ipsc-all_frames_roi_g2_0_38-->vita
python train_net_vita.py --num-gpus 1 --config-file configs/youtubevis_2019/ipsc-all_frames_roi_g2_0_38-vita_R50_bs8.yaml MODEL.WEIGHTS pretrained/vita_r50_coco.pth

<a id="ytvis2019___r50_ipsc_all_frames_roi_g2_0_3_8_"></a>
### ytvis2019       @ r50/ipsc-all_frames_roi_g2_0_38-->vita
python train_net_vita.py --num-gpus 1 --config-file configs/youtubevis_2019/ipsc-all_frames_roi_g2_0_38-vita_R50_bs8.yaml MODEL.WEIGHTS pretrained/vita_r50_ytvis2019.pth












