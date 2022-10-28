<!-- MarkdownTOC -->

- [ipsc-all_frames_roi_g2_0_38](#ipsc_all_frames_roi_g2_0_38_)
    - [swin       @ ipsc-all_frames_roi_g2_0_38](#swin___ipsc_all_frames_roi_g2_0_3_8_)
    - [r50       @ ipsc-all_frames_roi_g2_0_38](#r50___ipsc_all_frames_roi_g2_0_3_8_)

<!-- /MarkdownTOC -->

<a id="ipsc_all_frames_roi_g2_0_38_"></a>
# ipsc-all_frames_roi_g2_0_38

<a id="swin___ipsc_all_frames_roi_g2_0_3_8_"></a>
## swin       @ ipsc-all_frames_roi_g2_0_38-->vita
python train_net_vita.py --num-gpus 2 --config-file configs/youtubevis_2019/ipsc-all_frames_roi_g2_0_38-vita_SWIN_bs8.yaml MODEL.WEIGHTS pretrained/vita_swin_coco.pth

<a id="r50___ipsc_all_frames_roi_g2_0_3_8_"></a>
## r50       @ ipsc-all_frames_roi_g2_0_38-->vita
python train_net_vita.py --num-gpus 2 --config-file configs/youtubevis_2019/ipsc-all_frames_roi_g2_0_38-vita_SWIN_bs8.yaml MODEL.WEIGHTS pretrained/vita_r50_coco.pth












