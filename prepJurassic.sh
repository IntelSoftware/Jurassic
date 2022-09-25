#! /bin/bash

cp /data/oneapi_workshop/big_datasets/jurassic/*.zip .
unzip data.zip
unzip model.zip
source /glob/development-tools/versions/oneapi/2022.2/oneapi/setvars.sh --force
conda activate base
pip install -r requirements.txt
echo "create new environment"
conda create --clone pytorch --name openvinopytorch2
echo "activate environment"
conda activate openvinopytorch2
echo "install openvino-dev"
~/.conda/envs/openvinopytorch/bin/pip install --user openvino-dev[pytorch]
echo "register new kernel in Jupyter"
python -m ipykernel install --user --name openvinopytorch2
echo "install OpenVINO lan requirements"
pip install -r requirements_openvino.txt
conda activate base
