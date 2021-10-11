---
title: "Workflows for combining raster and vector data"
linktitle: "8: Combining raster and vector data"
date: "2021-10-11"
menu:
  content:
    parent: Course content
    weight: 8
type: docs
toc: true
bibliography: "../../static/bib/references.bib"
csl: "../../static/bib/ecology.csl"
slides: "0-slides"
---

Now that you’ve gotten some experience building databases using tabular and vector data, we’ll take a look at combining data models (i.e., using vectors and rasters together). We’ll rely largely on `terra::rasterize`, `terra::zonal`, and `terra::extract` to summarize data in ways that allow them to be combined with other tabular and vector data. We’ll also take a look at the speed of different approaches and think about scaling each approach to larger geographic extents.

## Resources

-   <i class="fas fa-book"></i> The [Spatial Data Operations Chapter](https://geocompr.robinlovelace.net/spatial-operations.html#spatial-ras) in (Lovelace et al. 2019) provides a nice overview of raster processing in `R`.

-   <i class="fas fa-external-link-square-alt"></i> This post on [Processing Large Rasters in R](https://strimas.com/post/processing-large-rasters-in-r/) by Matt Strimas-Mackey has a lot of useful background on what’s happening under the hood when processing large rasters in `R` along with examples of benchmarking to characterize speedups.

-   <i class="fas fa-book"></i> The [Chapters 9 and 10](https://bookdown.org/mcwimberly/gdswr-book/combining-raster-and-vector-data-1-gridded-meteorological-data.html) on raster processing in Michael Wimberly’s “Geospatial Data Science With R: Applications in Environmental Geography” bookdown project has a lot of useful examples using gridded climate data.

## Slides

Coming soon!

<div id="refs" class="references csl-bib-body hanging-indent" line-spacing="2">

<div id="ref-lovelace_geocomputation_2019" class="csl-entry">

Lovelace, R., J. Nowosad, and J. Muenchow. 2019. Geocomputation with R. CRC Press.

</div>

</div>
