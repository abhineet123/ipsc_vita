<!-- MarkdownTOC -->

- [virtualenv](#virtualen_v_)
    - [windows       @ virtualenv](#windows___virtualenv_)
    - [cc       @ virtualenv](#cc___virtualenv_)
    - [cuda_version       @ virtualenv](#cuda_version___virtualenv_)
- [install](#install_)
    - [pytorch       @ install](#pytorch___instal_l_)
    - [detectron2       @ install](#detectron2___instal_l_)
    - [grs/python3.6       @ install](#grs_python3_6___instal_l_)
        - [windows       @ grs/python3.6/install](#windows___grs_python3_6_instal_l_)
    - [requirements       @ install](#requirements___instal_l_)
    - [cuda_operators       @ install](#cuda_operators___instal_l_)
        - [cc       @ cuda_operators/install](#cc___cuda_operators_install_)
- [bugs](#bug_s_)
- [new_dataset](#new_dataset_)
    - [ytvis19       @ new_dataset](#ytvis19___new_datase_t_)

<!-- /MarkdownTOC -->

<a id="virtualen_v_"></a>
# virtualenv
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
```
python_requires=">=3.6",
```

<a id="windows___grs_python3_6_instal_l_"></a>
### windows       @ grs/python3.6/install-->vita_setup
change in `detectron2\layers\csrc\nms_rotated\nms_rotated_cuda.cu`
```
/*
#ifdef WITH_CUDA
#include "../box_iou_rotated/box_iou_rotated_utils.h"
#endif
// TODO avoid this when pytorch supports "same directory" hipification
#ifdef WITH_HIP
/\#include "box_iou_rotated/box_iou_rotated_utils.h"
#endif
*/
#include "box_iou_rotated/box_iou_rotated_utils.h"
```
<a id="requirements___instal_l_"></a>
## requirements       @ install-->vita_setup
python -m pip install -r requirements.txt

<a id="cuda_operators___instal_l_"></a>
## cuda_operators       @ install-->vita_setup
cd mask2former/modeling/pixel_decoder/ops
python setup.py build install
cd -

<a id="cc___cuda_operators_install_"></a>
### cc       @ cuda_operators/install-->vita_setup
salloc --nodes=1 --time=0:15:0 --account=def-nilanjan --gpus-per-node=1 --mem=4000M --cpus-per-task=4

module load cuda cudnn gcc python/3.8
source ~/vnext/bin/activate

cp -r projects/IDOL/idol/models/ops ~/
cd ~/ops/
python3 setup.py build install

<a id="bug_s_"></a>
# bugs
`AttributeError: module 'distutils' has no attribute 'version'`
python3 -m pip install setuptools==59.5.0

`RuntimeError: received 0 items of ancdata`
https://github.com/pytorch/pytorch/issues/973
torch.multiprocessing.set_sharing_strategy('file_system')
https://github.com/pytorch/pytorch/issues/973#issuecomment-459398189

<a id="new_dataset_"></a>
# new_dataset
<a id="ytvis19___new_datase_t_"></a>
## ytvis19       @ new_dataset-->vita_setup
"C:\UofA\PhD\ipsc_cell_tracking\ipsc_vnext\projects\IDOL\idol\data\datasets\builtin.py"
"C:\UofA\PhD\ipsc_cell_tracking\ipsc_vnext\projects\SeqFormer\seqformer\data\datasets\builtin.py"
`_PREDEFINED_SPLITS_YTVIS_2019`
`register_all_ytvis_2019`














