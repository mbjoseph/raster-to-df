library(raster)

r <- raster('data/USGS_NED_one_meter_x23y439_CO_Central_Western_2016_IMG_2018.img')
df <- as.data.frame(r)
