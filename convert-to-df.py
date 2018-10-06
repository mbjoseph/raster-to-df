import os
import pandas as pd
import rasterio

# read the first raster band as a numpy array
fname = os.path.join('data',
                     'USGS_NED_one_meter_x23y439_CO_Central_Western_2016_IMG_2018.img')
with rasterio.open(fname) as src:
  array = src.read(1) # bands are indexed from one

# unroll the 2d array into a vector of elevation values
long_array = array.reshape(-1)

# create a data frame
df = pd.DataFrame(long_array)
