---
title: "Event Distribution Modeling in R"
linktitle: "11: Distribution models"
date: "2021-11-30"
toc: yes
menu:
  example:
    parent: Examples
    weight: 11
type: docs
editor_options: 
  chunk_output_type: console
---

For many of us, the primary reason for learning to use `R` as a GIS is the ability to integrate spatial operations into statistical analysis workflows. Event distribution models provide a means of understanding how spatial predictors correlate with the presence of particular phenomena. These approaches range in complexity from logistic regression to statistical learning methods like support vector machines and random forests. We'll explore how to run a few of these in `R`.

## Loading our packages

We can fit simple logistic regressions with the `glm` function in the `stats` package that comes bundled with base `R`, but to fit some of the more complicated models, we'll rely on the `dismo` package which we've not used up to this point. The `dismo` package works with `Raster*` objects (not `SpatRaster` objects) so we'll be using the `raster` package today rather than the `terra` package. You'll want to make sure that you start with a new session so that the `raster` and `terra` functions don't conflict. Let's load them along with several of the other `Spatial*` packages here.


```r
library(raster)
```

```
## Loading required package: sp
```

```r
library(dismo)
library(sp)
library(rgdal) 
```

```
## Please note that rgdal will be retired by the end of 2023,
## plan transition to sf/stars/terra functions using GDAL and PROJ
## at your earliest convenience.
## 
## rgdal: version: 1.5-27, (SVN revision 1148)
## Geospatial Data Abstraction Library extensions to R successfully loaded
## Loaded GDAL runtime: GDAL 3.2.1, released 2020/12/29
## Path to GDAL shared files: /Library/Frameworks/R.framework/Versions/4.0/Resources/library/rgdal/gdal
## GDAL binary built with GEOS: TRUE 
## Loaded PROJ runtime: Rel. 7.2.1, January 1st, 2021, [PJ_VERSION: 721]
## Path to PROJ shared files: /Library/Frameworks/R.framework/Versions/4.0/Resources/library/rgdal/proj
## PROJ CDN enabled: FALSE
## Linking to sp version:1.4-5
## To mute warnings of possible GDAL/OSR exportToProj4() degradation,
## use options("rgdal_show_exportToProj4_warnings"="none") before loading sp or rgdal.
## Overwritten PROJ_LIB was /Library/Frameworks/R.framework/Versions/4.0/Resources/library/rgdal/proj
```

```r
library(rgeos)
```

```
## rgeos version: 0.5-8, (SVN revision 679)
##  GEOS runtime version: 3.8.1-CAPI-1.13.3 
##  Please note that rgeos will be retired by the end of 2023,
## plan transition to sf functions using GEOS at your earliest convenience.
##  Linking to sp version: 1.4-5 
##  Polygon checking: TRUE
```

```r
library(pander)
library(randomForest)
```

```
## randomForest 4.6-14
```

```
## Type rfNews() to see new features/changes/bug fixes.
```

## Loading the data

I've saved a presence/absence dataset that I created along with a number of bioclimatic predictors to our shared folder. I'll load those here using my local path. Remember, you'll need to change this to match the path of our shared folder.

























