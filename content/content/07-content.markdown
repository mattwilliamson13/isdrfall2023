---
title: "Building spatial databases based on co-location"
linktitle: "7: Deriving attributes based on location"
date: "2021-10-5"
menu:
  content:
    parent: Course content
    weight: 7
type: docs
toc: true
bibliography: "../../static/bib/references.bib"
csl: "../../static/bib/ecology.csl"
slides: "07-slides"
---

Today we’ll continue our development of attributes (or covariates) in our spatial databases. We’ll look at developing attributes that describe various geographic properties along with joining and subsetting based on locations.

## Resources

These chapters are not ‘prerequisite’ reading for the week, but provide a lot of helpful background for determining spatial relations between vector datasets and extracting those into attribute tables for subsequent visualization and analysis.

-   <i class="fas fa-book"></i> The [Spatial Data Operations Chapter](https://geocompr.robinlovelace.net/spatial-operations.html) in (Lovelace et al. 2019) makes the concepts of a network concrete (literally) by using a transportation route example to illustrate the various components of a network analysis in `R`.

-   <i class="fas fa-book"></i> [Attributes and Support](https://keen-swartz-3146c4.netlify.app/featureattributes.html) of Spatial Data Science, a `bookdown` project by Edzer Pebesma and Roger Bivand (of the `sf`, `sp`, `rgeos`, and `rgdal` packages)

## Slides

{{% slide-buttons %}}

<ul class="nav nav-tabs" id="slide-tabs" role="tablist">
<li class="nav-item">
<a class="nav-link active" id="building-spatial-databases-based-on-attributes-tab" data-toggle="tab" href="#building-spatial-databases-based-on-attributes" role="tab" aria-controls="building-spatial-databases-based-on-attributes" aria-selected="true">Building spatial databases based on attributes</a>
</li>
<li class="nav-item">
<a class="nav-link" id="workflows-for-spatial-analysis-tab" data-toggle="tab" href="#workflows-for-spatial-analysis" role="tab" aria-controls="workflows-for-spatial-analysis" aria-selected="false">Workflows for spatial analysis</a>
</li>
<li class="nav-item">
<a class="nav-link" id="databases-and-attributes-tab" data-toggle="tab" href="#databases-and-attributes" role="tab" aria-controls="databases-and-attributes" aria-selected="false">Databases and attributes</a>
</li>
<li class="nav-item">
<a class="nav-link" id="common-attribute-operations-tab" data-toggle="tab" href="#common-attribute-operations" role="tab" aria-controls="common-attribute-operations" aria-selected="false">Common attribute operations</a>
</li>
<li class="nav-item">
<a class="nav-link" id="joining-aspatial-data-tab" data-toggle="tab" href="#joining-aspatial-data" role="tab" aria-controls="joining-aspatial-data" aria-selected="false">Joining (a)spatial data</a>
</li>
</ul>

<div id="slide-tabs" class="tab-content">

<div id="building-spatial-databases-based-on-attributes" class="tab-pane fade show active" role="tabpanel" aria-labelledby="building-spatial-databases-based-on-attributes-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/07-slides.html#1">
</iframe>

</div>

</div>

<div id="workflows-for-spatial-analysis" class="tab-pane fade" role="tabpanel" aria-labelledby="workflows-for-spatial-analysis-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/07-slides.html#workflows">
</iframe>

</div>

</div>

<div id="databases-and-attributes" class="tab-pane fade" role="tabpanel" aria-labelledby="databases-and-attributes-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/07-slides.html#database">
</iframe>

</div>

</div>

<div id="common-attribute-operations" class="tab-pane fade" role="tabpanel" aria-labelledby="common-attribute-operations-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/07-slides.html#apps">
</iframe>

</div>

</div>

<div id="joining-aspatial-data" class="tab-pane fade" role="tabpanel" aria-labelledby="joining-aspatial-data-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/07-slides.html#joins">
</iframe>

</div>

</div>

</div>

<div id="refs" class="references csl-bib-body hanging-indent" line-spacing="2">

<div id="ref-lovelace_geocomputation_2019" class="csl-entry">

Lovelace, R., J. Nowosad, and J. Muenchow. 2019. Geocomputation with R. CRC Press.

</div>

</div>
