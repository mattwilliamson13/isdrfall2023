---
title: "Building spatial databases"
linktitle: "5: Spatial databases in R"
date: "2021-10-06"
toc: yes
menu:
  example:
    parent: Examples
    weight: 5
type: docs
editor_options: 
  chunk_output_type: console
---
One of the strongest justifications for using `R` as a Geographic Information System (GIS) is the ability to construct complete, reproducible workflows from data entry and cleaning through analysis and visualization. Constructing databases that combine spatial and tabular data is at the core of those workflows. This example should help you practice some of the key database operations that you may encounter as you conduct your own analysis.

# Load the datasets and packages

The data we'll be using for today's example and assignment are a mix of spatial and tabular data. The tabular data come from the [Land-Grab University(LGU)](https://www.landgrabu.org/) data on parcel sales and the National Park Service's (NPS) [annual visitation data](https://irma.nps.gov/STATS/Reports/National) for NPS-operated units in the Intermountain and Pacific West regions. The spatial data is a shapefile from the US Protected Area Database (PADUS) and a shapefile containing the parcels described by the Land-Grab University parcel database. We'll load each of those here and take a look at features and fields in each dataset. __Remember that you'll need to change the paths to match your own data.__


```r
library(sf)
```

```
## Linking to GEOS 3.9.1, GDAL 3.2.2, PROJ 7.2.1
```

```r
library(tidyverse)
```

```
## ── Attaching packages ─────────────────────────────────────── tidyverse 1.3.1 ──
```

```
## ✓ ggplot2 3.3.5     ✓ purrr   0.3.4
## ✓ tibble  3.1.3     ✓ dplyr   1.0.7
## ✓ tidyr   1.1.3     ✓ stringr 1.4.0
## ✓ readr   2.0.1     ✓ forcats 0.5.1
```

```
## ── Conflicts ────────────────────────────────────────── tidyverse_conflicts() ──
## x dplyr::filter() masks stats::filter()
## x dplyr::lag()    masks stats::lag()
```

```r
nps.visits.csv <- read_csv('/Users/mattwilliamson/Google Drive/My Drive/TEACHING/Intro_Spatial_Data_R/Data/session14/ParkVisits_2020IWPW.csv', skip = 3)
```

```
## Rows: 1668 Columns: 8
```

```
## ── Column specification ────────────────────────────────────────────────────────
## Delimiter: ","
## chr (5): ParkName, UnitCode, ParkType, Region, State
## dbl (2): Year, Month
```

```
## 
## ℹ Use `spec()` to retrieve the full column specification for this data.
## ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.
```

```r
head(nps.visits.csv)
```

```
## # A tibble: 6 × 8
##   ParkName                   UnitCode ParkType Region State  Year Month RecreationVisits
##   <chr>                      <chr>    <chr>    <chr>  <chr> <dbl> <dbl>            <dbl>
## 1 Alibates Flint Quarries NM ALFL     Nationa… Inter… TX     2020     1              273
## 2 Alibates Flint Quarries NM ALFL     Nationa… Inter… TX     2020     2              314
## 3 Alibates Flint Quarries NM ALFL     Nationa… Inter… TX     2020     3              233
## 4 Alibates Flint Quarries NM ALFL     Nationa… Inter… TX     2020     4                0
## 5 Alibates Flint Quarries NM ALFL     Nationa… Inter… TX     2020     5                0
## 6 Alibates Flint Quarries NM ALFL     Nationa… Inter… TX     2020     6              130
```

```r
parcels.csv <- read_csv('/Users/mattwilliamson/Google Drive/My Drive/TEACHING/Intro_Spatial_Data_R/Data/session14/Parcels.csv')
```

```
## Rows: 79461 Columns: 43
```

```
## ── Column specification ────────────────────────────────────────────────────────
## Delimiter: ","
## chr (36): MTRSA_LG, Loc_State, Loc_County, LG_State, LG_Reason, University, ...
## dbl  (6): Acres, Yr_ST_Accept, Yr_Uni_Assign, Yr_Patent, Date_Patent, GIS_Ac...
```

```
## 
## ℹ Use `spec()` to retrieve the full column specification for this data.
## ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.
```

```r
head(parcels.csv)
```

```
## # A tibble: 6 × 43
##   MTRSA_LG      Loc_State Loc_County Acres LG_State LG_Reason        University 
##   <chr>         <chr>     <chr>      <dbl> <chr>    <chr>            <chr>      
## 1 "AR050020S02… AR        Garland      160 AL       Patented under … Auburn Uni…
## 2 "KS060210S00… KS        McPherson     40 AL       Patented under … Auburn Uni…
## 3 "KS060210S00… KS        McPherson     40 AL       Patented under … Auburn Uni…
## 4 "KS060190S01… KS        Barton        80 AL       Patented under … Auburn Uni…
## 5 "KS060190S01… KS        Barton        80 AL       Patented under … Auburn Uni…
## 6 "KS060210S00… KS        McPherson     80 AL       Patented under … Auburn Uni…
## # … with 36 more variables: Uni_Ben_History <chr>, Royce_ID <chr>,
## #   Tribal_Nation <chr>, US_Acquired_Mode <chr>, Cession_States <chr>,
## #   Royce_Link <chr>, Yr_US_Acquire <chr>, Date_US_Acquire <chr>,
## #   US_Paid_for_Parcel <chr>, Endow_Raised_Parcel <chr>,
## #   Uni_Raise_US_Pay_Multiple <chr>, Yr_ST_Accept <dbl>, Yr_Uni_Assign <dbl>,
## #   Yr_Patent <dbl>, Date_Patent <dbl>, Patentees <chr>,
## #   Patent_Source_Reason <chr>, Source_ID <chr>, Source <chr>, …
```

```r
regional.pas.sf <- read_sf('/Users/mattwilliamson/Google Drive/My Drive/TEACHING/Intro_Spatial_Data_R/Data/session14/reg_pas.shp')

regional.pas.sf
```

```
## Simple feature collection with 544 features and 32 fields
## Geometry type: MULTIPOLYGON
## Dimension:     XY
## Bounding box:  xmin: -2034299 ymin: 1004785 xmax: -530474 ymax: 3059862
## Projected CRS: USA_Contiguous_Albers_Equal_Area_Conic_USGS_version
## # A tibble: 544 × 33
##    Categry Own_Typ Own_Nam Loc_Own Mng_Typ Mang_Nm Loc_Mng Des_Tp Loc_Ds Unit_Nm
##    <chr>   <chr>   <chr>   <chr>   <chr>   <chr>   <chr>   <chr>  <chr>  <chr>  
##  1 Procla… DESG    DESG    <NA>    FED     FWS     0       PROC   AS     Nation…
##  2 Procla… DESG    DESG    <NA>    FED     FWS     0       PROC   CA     San Lu…
##  3 Procla… DESG    DESG    <NA>    FED     FWS     0       PROC   CA     San Lu…
##  4 Procla… DESG    DESG    <NA>    FED     FWS     0       PROC   COORD  C. J. …
##  5 Procla… DESG    DESG    <NA>    FED     FWS     0       PROC   COORD  Carey …
##  6 Procla… DESG    DESG    <NA>    FED     FWS     0       PROC   COORD  Hagerm…
##  7 Procla… DESG    DESG    <NA>    FED     FWS     0       PROC   COORD  North …
##  8 Procla… DESG    DESG    <NA>    FED     FWS     0       PROC   COORD  Sand C…
##  9 Procla… DESG    DESG    <NA>    FED     FWS     0       PROC   FR     Eagle …
## 10 Procla… DESG    DESG    <NA>    FED     FWS     0       PROC   FSA    Farm S…
## # … with 534 more rows, and 23 more variables: Loc_Nm <chr>, Stat_Nm <chr>,
## #   Agg_Src <chr>, GIS_Src <chr>, Src_Dat <chr>, GIS_Acr <int>, Sr_PAID <chr>,
## #   WDPA_Cd <int>, Pb_Accs <chr>, Accss_S <chr>, Accss_D <chr>, GAP_Sts <chr>,
## #   GAPCdSr <chr>, GAPCdDt <chr>, IUCN_Ct <chr>, IUCNCtS <chr>, IUCNCtD <chr>,
## #   Dat_Est <chr>, Commnts <chr>, SHAPE_L <dbl>, SHAPE_A <dbl>, FetClss <chr>,
## #   geometry <MULTIPOLYGON [m]>
```

```r
regional.parcels.sf <- read_sf('/Users/mattwilliamson/Google Drive/My Drive/TEACHING/Intro_Spatial_Data_R/Data/session14/Parcel_Polygons.shp')

regional.parcels.sf
```

```
## Simple feature collection with 79360 features and 4 fields
## Geometry type: MULTIPOLYGON
## Dimension:     XYZ
## Bounding box:  xmin: -124.5124 ymin: 28.82222 xmax: -81.65863 ymax: 49.00015
## z_range:       zmin: 0 zmax: 0
## Geodetic CRS:  NAD83
## # A tibble: 79,360 × 5
##    OBJECTID_1 MTRSA_LG                    Shape_Leng Shape_Area                  geometry
##         <dbl> <chr>                            <dbl>      <dbl>        <MULTIPOLYGON [°]>
##  1          1 AR050020N0160W0SN360ASWVA       0.0317  0.0000626 Z (((-92.66263 34.76826 …
##  2          2 AR050020S0210W0SN200ANEAL       0.0325  0.0000651 Z (((-93.26224 34.55195 …
##  3          3 AR050020S0220W0SN250ASEWV       0.0321  0.0000639 Z (((-93.29927 34.53098 …
##  4          4 AR050030N0250W0SN040ASEWV       0.0308  0.0000580 Z (((-93.66021 34.93445 …
##  5          5 AR050030S0210W0SN290ANWWV       0.0324  0.0000652 Z (((-93.27249 34.44986 …
##  6          6 AR050050N0310W0SN170ASWSWMS     0.0164  0.0000166 Z (((-94.33553 35.10705 …
##  7          7 AR050050N0310W0SN200ANWSWMS     0.0163  0.0000164 Z (((-94.33586 35.0962 0…
##  8          8 AR050050N0310W0SN200AW½NWMS     0.0235  0.0000328 Z (((-94.33575 35.0998 0…
##  9          9 AR050060S0220W0SN220ANWME       0.0324  0.0000651 Z (((-93.33463 34.21174 …
## 10         10 AR050060S0260W0SN210ASECT       0.0323  0.0000643 Z (((-93.768 34.2144 0, …
## # … with 79,350 more rows
```

# Check the geometries, understand the data

By now you know that before we get too far down the road, we want to check the geometries and projections of our spatial data. Let's do that here. We can use the `all()` function to check to see if all of the geometries are valid (i.e., `st_is_valid()` returns all `TRUE`).


```r
all(st_is_valid(regional.pas.sf))
```

```
## [1] FALSE
```

```r
all(st_is_valid(regional.parcels.sf))
```

```
## st_as_s2(): dropping Z and/or M coordinate
```

```
## [1] FALSE
```

Unfortunately, they aren't all valid so we'll need to fix that here.


```r
regional.pas.valid <- st_make_valid(regional.pas.sf)
all(st_is_valid(regional.pas.valid)) #fixed it!
```

```
## [1] TRUE
```

```r
regional.parcels.valid <- st_make_valid(regional.parcels.sf)
all(st_is_valid(regional.parcels.valid)) #fixed it!
```

```
## [1] TRUE
```

Now that we've gotten the geometries cleaned up, we need to make sure the two datasets align.


```r
st_crs(regional.parcels.valid) == st_crs(regional.pas.valid) #Of course they dont
```

```
## [1] FALSE
```

```r
parcels.project <- regional.parcels.valid %>% 
  st_transform(., crs = st_crs(regional.pas.valid))

st_crs(parcels.project) == st_crs(regional.pas.valid) #fixed it!
```

```
## [1] TRUE
```

# Where are we going?

We'd like to explore how visitation to a number of NPS units contrasts with the amount of money the US paid to purchase the land those units sit on. This means we'll need a dataset that contains: a) the total number of visits to each unit in 2020, b) the number of parcels that were sold within the present-day boundaries of those units, and c) the sum of the value paid for those units.

# Subset the data to suit our questions

I'm going to focus on Idaho for this example, so I'll subset the data for that here.

```r
id.parcels.csv <- parcels.csv %>% 
  filter(., Loc_State == "ID")

id.park.visits <- nps.visits.csv %>% 
  filter(., State == "ID")

id.pas.sf <- regional.pas.valid %>% 
  filter(., Stat_Nm == "ID")
```

# Joining with keypairs
You'll notice that the the LGU parcels dataset does not have many attributes and none that will let us use `filter` to reduce the dataset. That's because the bulk of the tabular data is stored in the `parcels.csv` file. We'll have to join them before we can subset them based on an attribute. Remember, that the `_join` commands return objects with the `class` of the first argument. 


```r
join1 <- left_join(id.parcels.csv, parcels.project, by = "MTRSA_LG")
class(join1)
```

```
## [1] "spec_tbl_df" "tbl_df"      "tbl"         "data.frame"
```

```r
join2 <- left_join(parcels.project, id.parcels.csv, by = "MTRSA_LG")
class(join2)
```

```
## [1] "sf"         "tbl_df"     "tbl"        "data.frame"
```

Given this, there are two ways we might approach joining and subsetting the data. 


```r
id.parcels.sf <- left_join(parcels.project, id.parcels.csv, by = "MTRSA_LG") %>% 
  filter(., Loc_State == "ID")
class(id.parcels.sf)
```

```
## [1] "sf"         "tbl_df"     "tbl"        "data.frame"
```

```r
nrow(id.parcels.sf)
```

```
## [1] 336
```

```r
id.parcels.sf2 <- inner_join(parcels.project, id.parcels.csv, by = "MTRSA_LG")
class(id.parcels.sf2)
```

```
## [1] "sf"         "tbl_df"     "tbl"        "data.frame"
```

```r
nrow(id.parcels.sf2)
```

```
## [1] 336
```


Okay, now all we need to do is get the visit data attached to the NPS. But before we can do that, we need to summarize the monthly visits into a total for the year.


```r
id.park.visits.ann <- id.park.visits %>% 
  group_by(UnitCode) %>% 
  summarise(., Total = sum(RecreationVisits))

id.pas.visits <- id.pas.sf %>% 
  inner_join(., id.park.visits.ann, by = c("Loc_Nm" = "UnitCode"))
```

# Joining based on location

