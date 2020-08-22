sudo apt update -y
sudo apt upgrade -y
pip=/usr/bin/pip3
python=/usr/bin/python3
$pip install torch==1.6.0+cpu torchvision==0.7.0+cpu -f https://download.pytorch.org/whl/torch_stable.html --user
$python -m pip install 'git+https://github.com/facebookresearch/detectron2.git'



