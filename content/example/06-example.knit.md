---
title: "Combining raster and vector data"
linktitle: "6: Combining raster and vector data"
date: "2021-10-06"
toc: yes
menu:
  example:
    parent: Examples
    weight: 6
type: docs
editor_options: 
  chunk_output_type: console
---

Often when we build our databases for analyses, we'll be working with both vector and raster data models. This creates two issues:

1.  It's not easy (or often possible) to perform calculations across data models
2.  Many statistical algorithms expect dataframes with dependent and independent variables which makes working with rasters particularly tricky.

Today we'll look at a few ways to bring these two data models together to develop a dataset for analysis.

## Load your libraries and the data
Let's bring in the data. You should recognize the regional PA dataset and the land value dataset as we've been working with them a fair amount the last few weeks. The dataset you may not recognize is the species richness dataset (here, for mammals). These data come from a series of studies led by Clinton Jenkins and available [here](https://biodiversitymapping.org/). Let's read them in here.


```r
library(tidyverse)
```

```
## ── Attaching packages ─────────────────────────────────────── tidyverse 1.3.1 ──
```

```
## ✓ ggplot2 3.3.5     ✓ purrr   0.3.4
## ✓ tibble  3.1.5     ✓ dplyr   1.0.7
## ✓ tidyr   1.1.3     ✓ stringr 1.4.0
## ✓ readr   2.0.2     ✓ forcats 0.5.1
```

```
## ── Conflicts ────────────────────────────────────────── tidyverse_conflicts() ──
## x dplyr::filter() masks stats::filter()
## x dplyr::lag()    masks stats::lag()
```

```r
library(pander)
library(sf)
```

```
## Linking to GEOS 3.8.1, GDAL 3.2.1, PROJ 7.2.1
```

```r
library(terra)
```

```
## terra version 1.4.14
```

```
## 
## Attaching package: 'terra'
```

```
## The following object is masked from 'package:pander':
## 
##     wrap
```

```
## The following object is masked from 'package:dplyr':
## 
##     src
```

```
## The following object is masked from 'package:tidyr':
## 
##     extract
```

```r
library(units)
```

```
## udunits database from /Library/Frameworks/R.framework/Versions/4.0/Resources/library/units/share/udunits/udunits2.xml
```

```r
library(purrr)
library(sp)
library(profvis)
#landval <- terra::rast('/Users/matthewwilliamson/Downloads/session04/idval.tif')
landval <- rast('/Users/mattwilliamson/Google Drive/My Drive/TEACHING/Intro_Spatial_Data_R/Data/session16/Regval.tif')
mammal.rich <- rast('/Users/mattwilliamson/Google Drive/My Drive/TEACHING/Intro_Spatial_Data_R/Data/session16/Mammals_total_richness.tif')
pas.desig <- st_read('/Users/mattwilliamson/Google Drive/My Drive/TEACHING/Intro_Spatial_Data_R/Data/session04/regionalPAs1.shp')
```

```
## Reading layer `regionalPAs1' from data source 
##   `/Volumes/GoogleDrive/My Drive/TEACHING/Intro_Spatial_Data_R/Data/session04/regionalPAs1.shp' 
##   using driver `ESRI Shapefile'
## Simple feature collection with 224 features and 7 fields
## Geometry type: MULTIPOLYGON
## Dimension:     XY
## Bounding box:  xmin: -1714157 ymin: 1029431 xmax: -621234.8 ymax: 3043412
## Projected CRS: USA_Contiguous_Albers_Equal_Area_Conic_USGS_version
```

```r
pas.proc <- st_read('/Users/mattwilliamson/Google Drive/My Drive/TEACHING/Intro_Spatial_Data_R/Data/session16/reg_pas.shp')
```

```
## Reading layer `reg_pas' from data source 
##   `/Volumes/GoogleDrive/My Drive/TEACHING/Intro_Spatial_Data_R/Data/session16/reg_pas.shp' 
##   using driver `ESRI Shapefile'
## Simple feature collection with 544 features and 32 fields
## Geometry type: MULTIPOLYGON
## Dimension:     XY
## Bounding box:  xmin: -2034299 ymin: 1004785 xmax: -530474 ymax: 3059862
## Projected CRS: USA_Contiguous_Albers_Equal_Area_Conic_USGS_version
```

```r
#combine the pas into 1, but the columns don't all mathc

colnames(pas.proc)[c(1, 6, 8, 10, 12, 22, 25)] <- colnames(pas.desig)
```

```
## Warning in colnames(pas.proc)[c(1, 6, 8, 10, 12, 22, 25)] <-
## colnames(pas.desig): number of items to replace is not a multiple of replacement
## length
```

```r
pas <- pas.proc %>% 
  select(., colnames(pas.desig)) %>% 
  bind_rows(pas.desig, pas.proc)
```

Because we haven't looked at the species richness data yet, let's plot it here.

```r
plot(mammal.rich)
```

<img src="06-example_files/figure-html/mamplot-1.png" width="672" />

Ooof. Not pretty. That's because this data is stored as a catgorical raster displaying the count of species contained within each 10km grid cell. Often we are interested in knowing more than just how many species occur. We'd rather know something about how many speices and how rare they are. That data is also contained here and we can get it using `terra::catalyze`.


```r
mammal.rich <- catalyze(mammal.rich)
plot(mammal.rich)
```

<img src="06-example_files/figure-html/mamcat-1.png" width="672" />

When we plot the data we see that the "Value" raster contains the informaiton we are looking for (the number of species weighted by their regional rarity). Lets take that and leave the rest.


```r
mammal.rich <- mammal.rich[[2]]
plot(mammal.rich)
```

<img src="06-example_files/figure-html/mamassign-1.png" width="672" />

Before we move on into our analysis phase. Let's double check the CRS of our data.

```r
st_crs(mammal.rich)$proj4string
```

```
## [1] "+proj=aea +lat_0=37.5 +lon_0=-96 +lat_1=29.5 +lat_2=45.5 +x_0=0 +y_0=0 +datum=NAD83 +units=m +no_defs"
```

```r
st_crs(landval)$proj4string
```

```
## [1] "+proj=aea +lat_0=23 +lon_0=-96 +lat_1=29.5 +lat_2=45.5 +x_0=0 +y_0=0 +datum=NAD83 +units=m +no_defs"
```

```r
st_crs(pas)$proj4string
```

```
## [1] "+proj=aea +lat_0=23 +lon_0=-96 +lat_1=29.5 +lat_2=45.5 +x_0=0 +y_0=0 +datum=NAD83 +units=m +no_defs"
```
Alhtough the PAs and land value rasters match, the mammal richness is in a different project. We'll deal with that once we've subsetted the data a bit.

# Step 2: Filter the data
You'll need to filter the PADUS dataset so that it only contains the [Gap Status 1](https://www.usgs.gov/core-science-systems/science-analytics-and-synthesis/gap/science/pad-us-data-overview?qt-science_center_objects=0#qt-science_center_objects) protected areas. Here, I'll do it for Idaho. 


```r
id.gap.1 <- pas %>% 
  filter(., State_Nm == "ID" & GAP_Sts == "1")
```


# Step 3: Get the data for median income by county
Now let's get the median income data and geometry for each county. We'll use the tidycensus package for that. Note that you may have to sign up for a Census Api before you can use the tidycensus package ([instructions here](https://walker-data.com/tidycensus/articles/basic-usage.html))

```r
id.income <- tidycensus:: get_acs(geography = "county", 
              variables = c(medianicome = "B19013_001"),
              state = "ID", 
              year = 2018,
              key = key,
              geometry = TRUE) %>% 
                st_transform(., st_crs(pas))
```

```
## Getting data from the 2014-2018 5-year ACS
```

```
## Downloading feature geometry from the Census website.  To cache shapefiles for use in future sessions, set `options(tigris_use_cache = TRUE)`.
```

```
##   |                                                                              |                                                                      |   0%  |                                                                              |                                                                      |   1%  |                                                                              |=                                                                     |   1%  |                                                                              |=                                                                     |   2%  |                                                                              |==                                                                    |   2%  |                                                                              |==                                                                    |   3%  |                                                                              |===                                                                   |   4%  |                                                                              |===                                                                   |   5%  |                                                                              |====                                                                  |   5%  |                                                                              |====                                                                  |   6%  |                                                                              |=====                                                                 |   7%  |                                                                              |=====                                                                 |   8%  |                                                                              |======                                                                |   8%  |                                                                              |======                                                                |   9%  |                                                                              |=======                                                               |  10%  |                                                                              |=======                                                               |  11%  |                                                                              |========                                                              |  11%  |                                                                              |========                                                              |  12%  |                                                                              |=========                                                             |  13%  |                                                                              |==========                                                            |  14%  |                                                                              |==========                                                            |  15%  |                                                                              |===========                                                           |  15%  |                                                                              |===========                                                           |  16%  |                                                                              |============                                                          |  16%  |                                                                              |============                                                          |  17%  |                                                                              |============                                                          |  18%  |                                                                              |=============                                                         |  18%  |                                                                              |=============                                                         |  19%  |                                                                              |==============                                                        |  20%  |                                                                              |==============                                                        |  21%  |                                                                              |===============                                                       |  21%  |                                                                              |================                                                      |  22%  |                                                                              |================                                                      |  23%  |                                                                              |=================                                                     |  24%  |                                                                              |=================                                                     |  25%  |                                                                              |==================                                                    |  25%  |                                                                              |==================                                                    |  26%  |                                                                              |===================                                                   |  26%  |                                                                              |===================                                                   |  27%  |                                                                              |====================                                                  |  28%  |                                                                              |====================                                                  |  29%  |                                                                              |=====================                                                 |  29%  |                                                                              |========================                                              |  34%  |                                                                              |===============================                                       |  44%  |                                                                              |===============================                                       |  45%  |                                                                              |================================                                      |  46%  |                                                                              |=================================                                     |  46%  |                                                                              |=================================                                     |  47%  |                                                                              |=================================                                     |  48%  |                                                                              |==================================                                    |  48%  |                                                                              |===================================                                   |  50%  |                                                                              |====================================                                  |  51%  |                                                                              |====================================                                  |  52%  |                                                                              |=====================================                                 |  53%  |                                                                              |======================================                                |  54%  |                                                                              |======================================                                |  55%  |                                                                              |=======================================                               |  56%  |                                                                              |========================================                              |  57%  |                                                                              |==========================================                            |  59%  |                                                                              |==========================================                            |  60%  |                                                                              |===========================================                           |  61%  |                                                                              |===========================================                           |  62%  |                                                                              |============================================                          |  63%  |                                                                              |=============================================                         |  64%  |                                                                              |=============================================                         |  65%  |                                                                              |==============================================                        |  65%  |                                                                              |==============================================                        |  66%  |                                                                              |===============================================                       |  67%  |                                                                              |===============================================                       |  68%  |                                                                              |================================================                      |  68%  |                                                                              |================================================                      |  69%  |                                                                              |=================================================                     |  69%  |                                                                              |==================================================                    |  71%  |                                                                              |==================================================                    |  72%  |                                                                              |===================================================                   |  73%  |                                                                              |=====================================================                 |  75%  |                                                                              |=====================================================                 |  76%  |                                                                              |======================================================                |  77%  |                                                                              |======================================================                |  78%  |                                                                              |=======================================================               |  78%  |                                                                              |=======================================================               |  79%  |                                                                              |========================================================              |  80%  |                                                                              |=========================================================             |  81%  |                                                                              |=========================================================             |  82%  |                                                                              |==========================================================            |  82%  |                                                                              |==========================================================            |  83%  |                                                                              |===========================================================           |  84%  |                                                                              |===================================================================== |  98%  |                                                                              |======================================================================| 100%
```

# Step 4: Use a spatial join
Use `st_join` to connect your PAs dataset with every county within 50km and then use `group_by` and `summarise` to take the mean value of the median income data for each PA. By the time you are done with this step you should have the same number of rows that you had after your initial filter of the PAs (step 2).










