---
title: "Prettier maps in R and a first step towards interactivity"
linktitle: "8: Better maps in R"
date: "2021-10-27"
toc: yes
menu:
  example:
    parent: Examples
    weight: 8
type: docs
editor_options: 
  chunk_output_type: console
---


For today, we're going to focus primarily on buildiing maps in `ggplot2`. Although not specifically designed for mapping, getting familiar with the syntax and approach for layering information into your plots whether it's spatial or not. It can be a little trying because `ggplot2` is considerably slower to render than `tmap`, but learning how to work within the `ggplot2` paradigm will pay a variety of dividends when we move into interactive plots with `plotly`

## Loading some new packages

We are going to add the `ggspatial` package and the `plotly` package to  our typical list of packages. `ggspatial` provides access to a variety of functions that can make mapmaking easier with `ggplot2`. `plotly` will be the backbone of our attempts to make interactive maps.


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
library(ggmap)
```

```
## Google's Terms of Service: https://cloud.google.com/maps-platform/terms/.
```

```
## Please cite ggmap if you use it! See citation("ggmap") for details.
```

```
## 
## Attaching package: 'ggmap'
```

```
## The following object is masked from 'package:terra':
## 
##     inset
```

```r
library(cartogram)
```

```
## 
## Attaching package: 'cartogram'
```

```
## The following object is masked from 'package:terra':
## 
##     cartogram
```

```r
library(patchwork)
```

```
## 
## Attaching package: 'patchwork'
```

```
## The following object is masked from 'package:terra':
## 
##     area
```

```r
library(tmap)
```

```
## Registered S3 methods overwritten by 'stars':
##   method             from
##   st_bbox.SpatRaster sf  
##   st_crs.SpatRaster  sf
```

```r
library(viridis)
```

```
## Loading required package: viridisLite
```

```r
library(tigris)
```

```
## To enable 
## caching of data, set `options(tigris_use_cache = TRUE)` in your R script or .Rprofile.
```

```r
library(ggspatial)
library(plotly)
```

```
## 
## Attaching package: 'plotly'
```

```
## The following object is masked from 'package:ggmap':
## 
##     wind
```

```
## The following object is masked from 'package:ggplot2':
## 
##     last_plot
```

```
## The following object is masked from 'package:stats':
## 
##     filter
```

```
## The following object is masked from 'package:graphics':
## 
##     layout
```

## Load the data

Here I'm loading data on human modification (from David Theobald), the mammal species richness data, and the land value data. I've also added some vectors with Idaho's boundaries, some census data, and the GAP Status 1 and 2 PAs.
















