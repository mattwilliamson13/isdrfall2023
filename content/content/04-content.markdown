---
title: "Raster data models for geographic information"
linktitle: "4: Raster data models for geographic information"
date: "2021-09-13"
menu:
  content:
    parent: Course content
    weight: 4
type: docs
toc: true
bibliography: "../../static/bib/references.bib"
csl: "../../static/bib/ecology.csl"
slides: "04-slides"
---

Today we’ll be exploring the raster data model and how it is implemented within the spatial packages in the `R` computing environment.

## Resources

These chapters are not ‘prerequisite’ reading for the week, but provide a lot of helpful background for raster proccessing in R.

-   <i class="fas fa-book"></i> The [`raster` package vignette](https://www.rspatial.org/raster/RasterPackage.pdf) has a number of helpful examples for different workflows with raster objects in `R`.

-   <i class="fas fa-external-link-square-alt"></i> The [`terra` package vignette](https://rspatial.org/terra/pkg/1-introduction.html#) describes the new raster functions available in `terra`, their relationship to those in the `raster` package, and the changes in syntax between the two.

-   <i class="fas fa-book"></i> The [Functional Programming](https://adv-r.hadley.nz/fp.html) and [Measuring performance](https://adv-r.hadley.nz/perf-measure.html) from *Advanced R* (Wickham 2019) provide an excellent introduction to developing your own functions for repeated operations and ways to optimise code for large problems. Raster data processing often involves repeating (sometimes multiple) steps 100s of times. These chapters introduce strategies for developing functions for repeated operations and identfying and fixing bottlenecks in those functions.

## Slides

{{% slide-buttons %}}

<ul class="nav nav-tabs" id="slide-tabs" role="tablist">
<li class="nav-item">
<a class="nav-link active" id="raster-data-models-for-geographic-information-tab" data-toggle="tab" href="#raster-data-models-for-geographic-information" role="tab" aria-controls="raster-data-models-for-geographic-information" aria-selected="true">Raster Data Models for Geographic Information</a>
</li>
<li class="nav-item">
<a class="nav-link" id="the-raster-data-model-tab" data-toggle="tab" href="#the-raster-data-model" role="tab" aria-controls="the-raster-data-model" aria-selected="false">The Raster Data Model</a>
</li>
<li class="nav-item">
<a class="nav-link" id="operations-on-vector-data-tab" data-toggle="tab" href="#operations-on-vector-data" role="tab" aria-controls="operations-on-vector-data" aria-selected="false">Operations on vector data</a>
</li>
</ul>

<div id="slide-tabs" class="tab-content">

<div id="raster-data-models-for-geographic-information" class="tab-pane fade show active" role="tabpanel" aria-labelledby="raster-data-models-for-geographic-information-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/04-slides.html#1">
</iframe>

</div>

</div>

<div id="the-raster-data-model" class="tab-pane fade" role="tabpanel" aria-labelledby="the-raster-data-model-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/04-slides.html#defining">
</iframe>

</div>

</div>

<div id="operations-on-vector-data" class="tab-pane fade" role="tabpanel" aria-labelledby="operations-on-vector-data-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/04-slides.html#operations">
</iframe>

</div>

</div>

</div>

<div id="refs" class="references csl-bib-body hanging-indent" line-spacing="2">

<div id="ref-wickham2019advanced" class="csl-entry">

Wickham, H. 2019. Advanced r. chapman; hall/CRC.

</div>

</div>
