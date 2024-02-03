#! /bin/bash

echo "Gathering data"
cp -R ~/Big_Data/jurassic/ data/
mv data/jurassic/DinosaurNationalMonument data/DinosaurNationalMonument
mv data/jurassic/geemap data/geemap
cp assets/m_4010938_ne_12_060_20211004_bc_cropped2.png data/DinosaurNationalMonument/
mkdir data/DinosaurNationalMonument/patches
echo "Gathering Models"
mkdir models
echo "Setting conda environment"
pip install -r requirements.txt
echo "creating new environment"
