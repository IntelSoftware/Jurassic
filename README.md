# Jurassic

## Preparation steps units 00 to 08:

### Clone the repository
First, we download all the code and some of the pre-trained sample models and dataset from Github. 
```
mkdir JurassicDemo
cd JurassicDemo
source /glob/development-tools/versions/oneapi/2022.2/oneapi/setvars.sh --force
conda activate base
git clone https://github.com/IntelSoftware/Jurassic.git
cd Jurassic
pip install -r requirements.txt
```

### Download the Training Dataset
This will download the training dataset. This is required to run the training and more! 

#### On Local Machine 
```
wget -O data.zip "https://www.dropbox.com/s/ihkbox8vqksb2ii/data.zip?dl=0"
unzip data.zip
```
#### On DevCloud:   
```
cp /data/oneapi_workshop/big_datasets/jurassic/jurassic.tar.gz .
tar zxvf jurassic.tar.gz; mv Jurassic data
```

# Please complete the two learning units 2 (tabular clustering and classification) and 7 (PyTroch version of resnet18). Feel free to take unit 9 (accelerating inference) using OpenVINO as a homework exercise for the sake of time!

## Preparation steps units 09:

### Install OpenVINO on Local Machine (required for running exercise [#9](https://github.com/IntelSoftware/Jurassic/blob/main/09_Dino_bone_find_OpenVINO.ipynb) )
Please see [Installation Guide](https://github.com/openvinotoolkit/openvino_notebooks#-installation-guide) for OpenVINO 
pre-requisites and requirements. We recommend Python 3.7 on Windows for quick setup. On Linux, please do follow the (Linux GPU Driver Installation)[https://github.com/openvinotoolkit/openvino_notebooks/discussions/540] to ensure your system will work with iGPU. 

This installation step install OpenVINO 2022.1 with PyTorch, and Jupyter Lab. Please ensure you use the virtual environment to avoid dependencies conflicts. 

#### OpenVINO on DevCloud:   
```bash
conda create --clone pytorch --name openvinopytorch
conda activate openvinopytorch
~/.conda/envs/openvinopytorch/bin/pip install --user openvino-dev[pytorch]
python -m ipykernel install --user --name openvinopytorch
pip install -r requirements_openvino.txt
```

#### OpenVINO on  Windows
```
cd Jurassic
python -m venv openvino_env
.\openvino_env\Scripts\activate
python -m pip install -U pip setuptools wheel
pip install -r requirements_openvino.txt
```



#### OpenVINO on  Linux or Mac OS 
```bash
cd Jurassic
python -m venv openvino_env
chmod -R 777 openvino_env/
./openvino_env/bin/activate
python -m pip install -U pip setuptools wheel
pip install -r requirements_openvino.txt
```

### How to run
You can start jupyter lab either on DevCloud, or execute the following in the terminal (after installations) locally.

```
cd Jurassic
jupyter lab .
```
