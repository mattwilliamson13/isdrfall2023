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

Coming Soon!

<div id="refs" class="references csl-bib-body hanging-indent" line-spacing="2">

<div id="ref-wickham2019advanced" class="csl-entry">

Wickham, H. 2019. Advanced r. chapman; hall/CRC.

</div>

</div>
