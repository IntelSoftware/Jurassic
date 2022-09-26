# Jurassic

## Preparation steps units 00 to 08:

### Clone the repository
First, we download all the code and some of the pre-trained sample models and dataset from Github. 
```
mkdir JurassicDemo
cd JurassicDemo
git clone https://github.com/IntelSoftware/Jurassic.git

```

#### On DevCloud:   
```
cd JurassicDemo/Jurassic
. prepJurassic.sh
```
___

### Download the Training Dataset
This will download the training dataset. This is required to run the training and more! 

#### On Local Machine 
```
cd Jurassic
wget -O data.zip "https://www.dropbox.com/s/ihkbox8vqksb2ii/data.zip" && unzip data.zip
wget -O models.zip "https://www.dropbox.com/s/ihkbox8vqksb2ii/models.zip" && unzip models.zip
unzip data.zip
unzip models.zip
```

**NOTE**
Please complete the two learning units 2 (tabular clustering and classification) and 7 (PyTroch version of resnet18). Feel free to take unit 9 (accelerating inference) using OpenVINO as a homework exercise for the sake of time!
___

## Preparation steps units 09:
The prepJurassic.sh contains the detailed steps for DevCloud but similar steps for local are needed to be carried out manually.

### Install OpenVINO on Local Machine (required for running exercise [#9](https://github.com/IntelSoftware/Jurassic/blob/main/09_Dino_bone_find_OpenVINO.ipynb) )
Please see [Installation Guide](https://github.com/openvinotoolkit/openvino_notebooks#-installation-guide) for OpenVINO 
pre-requisites and requirements. We recommend Python 3.7 on Windows for quick setup. On Linux, please do follow the (Linux GPU Driver Installation)[https://github.com/openvinotoolkit/openvino_notebooks/discussions/540] to ensure your system will work with iGPU. 

This installation step install OpenVINO 2022.1 with PyTorch, and Jupyter Lab. Please ensure you use the virtual environment to avoid dependencies conflicts. 

#### OpenVINO on DevCloud: 

The prepJurassic.sh has performed these steps already

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
