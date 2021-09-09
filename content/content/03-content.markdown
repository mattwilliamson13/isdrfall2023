---
title: "Vector data models for geographic information"
linktitle: "3: Vector data models for geographic information"
date: "2021-09-06"
menu:
  content:
    parent: Course content
    weight: 3
type: docs
toc: true
bibliography: "../../static/bib/references.bib"
csl: "../../static/bib/ecology.csl"
slides: "03-slides"
---

Today we’ll focus on getting oriented to the course and the tools we’ll be using throughout the semester. Readings are designed to help understand some of the ‘rules’ of R syntax and develop an understanding for manipulating different types of data in R.

## Resources

-   <i class="fas fa-external-link-square-alt"></i> The introductory vignette for the [`sf` package](https://r-spatial.github.io/sf/articles/sf1.html) has a lot of useful info on `sf` objects and conventions.

-   <i class="fas fa-book"></i> [Section 2.2](https://geocompr.robinlovelace.net/spatial-class.html) on Vector Data and [Sections 5.1-5.3](https://geocompr.robinlovelace.net/geometric-operations.html) on Geographic Operations in Lovelace et al. (Lovelace et al. 2019) - for more details about vectors and geometric operations on vectors.

-   <i class="fas fa-external-link-square-alt"></i> [Section 3.1 and 3.2](https://keen-swartz-3146c4.netlify.app/geometries.html) of Spatial Data Science, a `bookdown` project by Edzer Pebesma and Roger Bivand (of the `sf`, `sp`, `rgeos`, and `rgdal` packages)

## Slides

The slides for today’s lesson are available online as an HTML file. Use the buttons below to open the slides either as an interactive website or as a static PDF (for printing or storing for later). You can also click in the slides below and navigate through them with your left and right arrow keys.

{{% slide-buttons %}}

<ul class="nav nav-tabs" id="slide-tabs" role="tablist">
<li class="nav-item">
<a class="nav-link active" id="vector-data-models-for-geographic-information-tab" data-toggle="tab" href="#vector-data-models-for-geographic-information" role="tab" aria-controls="vector-data-models-for-geographic-information" aria-selected="true">Vector Data Models for Geographic Information</a>
</li>
<li class="nav-item">
<a class="nav-link" id="types-of-vector-data-tab" data-toggle="tab" href="#types-of-vector-data" role="tab" aria-controls="types-of-vector-data" aria-selected="false">Types of vector data</a>
</li>
<li class="nav-item">
<a class="nav-link" id="creating-vector-data-in-r-tab" data-toggle="tab" href="#creating-vector-data-in-r" role="tab" aria-controls="creating-vector-data-in-r" aria-selected="false">Creating vector data in `R`</a>
</li>
<li class="nav-item">
<a class="nav-link" id="operations-on-vector-data-tab" data-toggle="tab" href="#operations-on-vector-data" role="tab" aria-controls="operations-on-vector-data" aria-selected="false">Operations on vector data</a>
</li>
</ul>

<div id="slide-tabs" class="tab-content">

<div id="vector-data-models-for-geographic-information" class="tab-pane fade show active" role="tabpanel" aria-labelledby="vector-data-models-for-geographic-information-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/03-slides.html#1">
</iframe>

</div>

</div>

<div id="types-of-vector-data" class="tab-pane fade" role="tabpanel" aria-labelledby="types-of-vector-data-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/03-slides.html#types">
</iframe>

</div>

</div>

<div id="creating-vector-data-in-r" class="tab-pane fade" role="tabpanel" aria-labelledby="creating-vector-data-in-r-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/03-slides.html#create">
</iframe>

</div>

</div>

<div id="operations-on-vector-data" class="tab-pane fade" role="tabpanel" aria-labelledby="operations-on-vector-data-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/03-slides.html#operations">
</iframe>

</div>

</div>

</div>

<div id="refs" class="references csl-bib-body hanging-indent" line-spacing="2">

<div id="ref-lovelace_geocomputation_2019" class="csl-entry">

Lovelace, R., J. Nowosad, and J. Muenchow. 2019. Geocomputation with R. CRC Press.

</div>

</div>
