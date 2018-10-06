## R vs. Python: simple raster to data frame conversion timing

This repo compares the amount of time it takes to convert one raster band to a 
data frame in R and Python. 

### Prerequisites

This assumes that you have the R raster package installed, as well as the 
following command line utilities: 

- wget
- unzip
- printf
-time

It also assumes you have conda and the 
[earth-analytics-python](https://github.com/earthlab/earth-analytics-python-env) 
conda environment installed.


### How to use

To run the comparison, run the `main.sh` script: 

```
bash main.sh
```
