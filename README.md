# Jurassic

## Preparation steps:

### Clone the repository
First, we download all the code and some of the pre-trained samples models and dataset from Github. 
```
mkdir Jurassic_Demo
cd Jurassic_Demo
pip install -r requirements.txt
git clone https://github.com/IntelSoftware/Jurassic.git
```

### Download the Training Dataset
This will download the training dataset. This is required! 
#### For Local Machine 
```
cd Jurassic
wget -O data.zip "https://www.dropbox.com/s/ihkbox8vqksb2ii/data.zip?dl=0
unzip data.zip
```
#### On DevCloud:   
```
cd Jurassic
cp /data/oneapi_workshop/big_datasets/jurassic/jurassic.tar.gz .
tar zxvf jurassic.tar.gz; mv jurassic Data
```

### Install OpenVINO on Local Machine (required for running exercise [#9](https://github.com/IntelSoftware/Jurassic/blob/main/09_Dino_bone_find_OpenVINO.ipynb) )
Please see [Installation Guide](https://github.com/openvinotoolkit/openvino_notebooks#-installation-guide) for OpenVINO 
pre-requisites and requirements. We recommend Python 3.7 on Windows for quick setup. On Linux, please do follow the (Linux GPU Driver Installation)[https://github.com/openvinotoolkit/openvino_notebooks/discussions/540] to ensure your system will work with iGPU. 

This installation step install OpenVINO 2022.1 with PyTorch, and Jupyter Lab. Please ensure you use the virtual environment to avoid dependencies conflicts. 

On Windows

```
cd Jurassic
python -m venv openvino_env
.\openvino_env\Scripts\activate
python -m pip install -U pip setuptools wheel
pip install -r requirements_openvino.txt
```


On Linux or Mac OS 
```
cd Jurassic
python -m venv openvino_env
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
