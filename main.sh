#!/bin/bash

printf 'Downloading data...'
#wget https://prd-tnm.s3.amazonaws.com/StagedProducts/Elevation/1m/IMG/USGS_NED_one_meter_x23y439_CO_Central_Western_2016_IMG_2018.zip
#mkdir -p data
#unzip -o USGS_NED_one_meter_x23y439_CO_Central_Western_2016_IMG_2018.zip -d data
#rm USGS_NED_one_meter_x23y439_CO_Central_Western_2016_IMG_2018.zip


printf '\nCreating a data frame in R...\n'
time Rscript --vanilla convert-to-df.R


printf '\nCreating a data frame in Python...\n'
source activate earth-analytics-python && time python convert-to-df.py
