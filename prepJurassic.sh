#! /bin/bash

echo "Gathering data"
cp -R ~/Big_Data/jurassic/ data/
mv data/jurassic/data/DinosaurNationalMonument 
echo "Gathering Models"
mkdir models
echo "Setting conda environment"
pip install -r requirements.txt
echo "creating new environment"
