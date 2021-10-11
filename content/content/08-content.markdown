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

{{% slide-buttons %}}

<ul class="nav nav-tabs" id="slide-tabs" role="tablist">
<li class="nav-item">
<a class="nav-link active" id="workflows-for-combining-raster-and-vector-data-tab" data-toggle="tab" href="#workflows-for-combining-raster-and-vector-data" role="tab" aria-controls="workflows-for-combining-raster-and-vector-data" aria-selected="true">Workflows for combining raster and vector data</a>
</li>
<li class="nav-item">
<a class="nav-link" id="revisiting-raster-operations-tab" data-toggle="tab" href="#revisiting-raster-operations" role="tab" aria-controls="revisiting-raster-operations" aria-selected="false">Revisiting raster operations</a>
</li>
<li class="nav-item">
<a class="nav-link" id="zonal-statistics-tab" data-toggle="tab" href="#zonal-statistics" role="tab" aria-controls="zonal-statistics" aria-selected="false">Zonal statistics</a>
</li>
<li class="nav-item">
<a class="nav-link" id="extractions-tab" data-toggle="tab" href="#extractions" role="tab" aria-controls="extractions" aria-selected="false">Extractions</a>
</li>
<li class="nav-item">
<a class="nav-link" id="scaling-tab" data-toggle="tab" href="#scaling" role="tab" aria-controls="scaling" aria-selected="false">Scaling</a>
</li>
</ul>

<div id="slide-tabs" class="tab-content">

<div id="workflows-for-combining-raster-and-vector-data" class="tab-pane fade show active" role="tabpanel" aria-labelledby="workflows-for-combining-raster-and-vector-data-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/08-slides.html#1">
</iframe>

</div>

</div>

<div id="revisiting-raster-operations" class="tab-pane fade" role="tabpanel" aria-labelledby="revisiting-raster-operations-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/08-slides.html#ops">
</iframe>

</div>

</div>

<div id="zonal-statistics" class="tab-pane fade" role="tabpanel" aria-labelledby="zonal-statistics-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/08-slides.html#zonal">
</iframe>

</div>

</div>

<div id="extractions" class="tab-pane fade" role="tabpanel" aria-labelledby="extractions-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/08-slides.html#extract">
</iframe>

</div>

</div>

<div id="scaling" class="tab-pane fade" role="tabpanel" aria-labelledby="scaling-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/08-slides.html#tiles">
</iframe>

</div>

</div>

</div>

<div id="refs" class="references csl-bib-body hanging-indent" line-spacing="2">

<div id="ref-lovelace_geocomputation_2019" class="csl-entry">

Lovelace, R., J. Nowosad, and J. Muenchow. 2019. Geocomputation with R. CRC Press.

</div>

</div>
