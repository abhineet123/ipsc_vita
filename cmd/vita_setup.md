<!-- MarkdownTOC -->

- [virtualenv](#virtualen_v_)
    - [grs/python3.6       @ virtualenv](#grs_python3_6___virtualenv_)
    - [general       @ virtualenv](#general___virtualenv_)
    - [windows       @ virtualenv](#windows___virtualenv_)
    - [cc       @ virtualenv](#cc___virtualenv_)
    - [cuda_version       @ virtualenv](#cuda_version___virtualenv_)
- [install](#install_)
    - [pytorch       @ install](#pytorch___instal_l_)
    - [detectron2       @ install](#detectron2___instal_l_)
    - [grs/python3.6       @ install](#grs_python3_6___instal_l_)
        - [windows       @ grs/python3.6/install](#windows___grs_python3_6_instal_l_)
    - [opencv       @ install](#opencv___instal_l_)
        - [3.4.11.45       @ opencv/install](#3_4_11_45___opencv_install_)
        - [4.5.4.60       @ opencv/install](#4_5_4_60___opencv_install_)
    - [requirements       @ install](#requirements___instal_l_)
    - [cuda_operators       @ install](#cuda_operators___instal_l_)
    - [cc       @ install](#cc___instal_l_)
- [bugs](#bug_s_)
    - [windows       @ bugs](#windows___bugs_)
- [new_dataset](#new_dataset_)
    - [ytvis19       @ new_dataset](#ytvis19___new_datase_t_)

<!-- /MarkdownTOC -->

<a id="virtualen_v_"></a>
# virtualenv
<a id="grs_python3_6___virtualenv_"></a>
## grs/python3.6       @ virtualenv-->vita_setup

apt install libpython3.8-dev
apt-get install python3.8-dev
apt-get install python3.8-tk

python3.8 -m pip install virtualenv virtualenvwrapper
mkvirtualenv -p python3.8 vita 

<a id="general___virtualenv_"></a>
## general       @ virtualenv-->vita_setup
python3 -m pip install virtualenv virtualenvwrapper

nano ~/.bashrc

export PATH=$PATH:/usr/local/cuda/bin

export WORKON_HOME=$HOME/.virtualenvs  
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3  
source /usr/local/bin/virtualenvwrapper.sh  

source ~/.bashrc

mkvirtualenv vita
workon vita

alias vita='workon vita'

<a id="windows___virtualenv_"></a>
## windows       @ virtualenv-->vita_setup
virtualenv vita
vita\Scripts\activate

<a id="cc___virtualenv_"></a>
## cc       @ virtualenv-->vita_setup
module load python/3.8
module load gcc cuda cudnn
virtualenv vita
source vita/bin/activate
deactivate

alias vita='source vita/bin/activate'

diskusage_report

scp -r -P 9738 abhineet@greyshark.cs.ualberta.ca:~/ipsc_vita/pretrained/vita_swin_coco.pth ./
scp -r -P 9738 abhineet@greyshark.cs.ualberta.ca:~/ipsc_vita/vita_swin_ytvis2019.pth ./


<a id="cuda_version___virtualenv_"></a>
## cuda_version       @ virtualenv-->vita_setup
nvcc --version
/usr/local/cuda/bin/nvcc --version

<a id="install_"></a>
# install
<a id="pytorch___instal_l_"></a>
## pytorch       @ install-->vita_setup
python -m pip install torch==1.10.2+cu113 torchvision==0.11.3+cu113 torchaudio===0.10.2+cu113 -f https://download.pytorch.org/whl/torch_stable.html
<a id="detectron2___instal_l_"></a>
## detectron2       @ install-->vita_setup
git clone https://github.com/facebookresearch/detectron2.git
python -m pip install -e detectron2

<a id="grs_python3_6___instal_l_"></a>
## grs/python3.6       @ install-->vita_setup
nano detectron2/setup.py
`python_requires=">=3.6"`

__does not work__
git clone -b legacy_py3.6 https://github.com/QUVA-Lab/e2cnn.git
cd e2cnn
python setup.py install

<a id="windows___grs_python3_6_instal_l_"></a>
### windows       @ grs/python3.6/install-->vita_setup
change in `detectron2\layers\csrc\nms_rotated\nms_rotated_cuda.cu`
```
/*
<a id="ifdef_with_cud_a_"></a>
#ifdef WITH_CUDA
<a id="include_____box_iou_rotated_box_iou_rotated_utils_h_"></a>
#include "../box_iou_rotated/box_iou_rotated_utils.h"
<a id="endif_"></a>
#endif
// TODO avoid this when pytorch supports "same directory" hipification
<a id="ifdef_with_hip_"></a>
#ifdef WITH_HIP
/\#include "box_iou_rotated/box_iou_rotated_utils.h"
<a id="endif__1"></a>
#endif
*/
#include "box_iou_rotated/box_iou_rotated_utils.h"
```
<a id="opencv___instal_l_"></a>
## opencv       @ install-->vita_setup
python -m pip install opencv-python 

<a id="3_4_11_45___opencv_install_"></a>
### 3.4.11.45       @ opencv/install-->vita_setup
python -m pip install opencv-python==3.4.11.45 opencv-contrib-python==3.4.11.45

<a id="4_5_4_60___opencv_install_"></a>
### 4.5.4.60       @ opencv/install-->vita_setup
python36 -m pip install opencv-python==4.5.4.60 opencv-contrib-python==4.5.4.60

<a id="requirements___instal_l_"></a>
## requirements       @ install-->vita_setup
python -m pip install -r requirements.txt

<a id="cuda_operators___instal_l_"></a>
## cuda_operators       @ install-->vita_setup
cd mask2former/modeling/pixel_decoder/ops
python setup.py build install
cd -

<a id="cc___instal_l_"></a>
## cc       @ install-->vita_setup
salloc --nodes=1 --time=0:05:0 --account=def-nilanjan --gpus-per-node=1 --mem=4000M --cpus-per-task=1
module load cuda cudnn gcc python/3.8
source ~/vita/bin/activate
cp -r mask2former/modeling/pixel_decoder/ops ~/
cd ~/ops/
python3 setup.py build install

<a id="bug_s_"></a>
# bugs
<a id="windows___bugs_"></a>
## windows       @ bugs-->vita_setup
`RuntimeError: Distributed package doesn't have NCCL built in`
change `backend="NCCL"` to `backend="GLOO"` in 
"C:\UofA\PhD\ipsc_cell_tracking\ipsc_vita\detectron2\detectron2\engine\launch.py"

<a id="new_dataset_"></a>
# new_dataset
<a id="ytvis19___new_datase_t_"></a>
## ytvis19       @ new_dataset-->vita_setup
"C:\UofA\PhD\ipsc_cell_tracking\ipsc_vnext\projects\IDOL\idol\data\datasets\builtin.py"
"C:\UofA\PhD\ipsc_cell_tracking\ipsc_vnext\projects\SeqFormer\seqformer\data\datasets\builtin.py"
`_PREDEFINED_SPLITS_YTVIS_2019`
`register_all_ytvis_2019`

















