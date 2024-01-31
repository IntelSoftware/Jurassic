#! /bin/bash

echo "Gathering data"
#cp /data/oneapi_workshop/big_datasets/jurassic/*.zip .
cp -R ~/Big_Data/jurassic/ data
echo "Gathering Models"
mkdir models
echo "Setting conda environment"
pip install -r requirements.txt
echo "creating new environment"
