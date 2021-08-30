---
title: "Spatial data is special data"
linktitle: "2: Spatial data is special data"
date: "2021-08-27"
menu:
  content:
    parent: Course content
    weight: 2
type: docs
toc: true
bibliography: "../../static/bib/references.bib"
csl: "../../static/bib/ecology.csl"
slides: "01-slides"
---

Today we’ll start getting into the nitty-gritty of geographic data and how the various elements describing spatial position are managed within `R`.

## Objectives

By the end of today, you should be able to:
\* Describe several ways to load spatial data into `R`
\* Define a coordinate reference system and describe why it is important
\* Identify the different ways projections are expressed in `R` and `gdal`
\* Describe the other key elements of spatial data

## Readings

-   <i class="fas fa-book"></i> [Coordinate Reference Systems](https://geocompr.robinlovelace.net/spatial-class.html#crs-intro) Section 2.4 in Lovelace et al., *Geocomputation with R* (Lovelace et al. 2019)

-   <i class="fas fa-book"></i> [Chapter 1: Introduction](https://saylordotorg.github.io/text_essentials-of-geographic-information-systems/s05-introduction.html) in Essentials of Geographic Information Systems by Campbell and Shin (Campbell and Shin 2011)

-   <i class="fas fa-external-link-square-alt"></i> [Scale and Projections](https://open.lib.umn.edu/mapping/chapter/3-scale-and-projections/) - a portion of *Mapping, Society, and Technology* an Laura Matson and Melinda Kernik.

## Slides

{{% slide-buttons %}}

<ul class="nav nav-tabs" id="slide-tabs" role="tablist">
<li class="nav-item">
<a class="nav-link active" id="welcome-tab" data-toggle="tab" href="#welcome" role="tab" aria-controls="welcome" aria-selected="true">Welcome</a>
</li>
<li class="nav-item">
<a class="nav-link" id="plan-for-the-day-tab" data-toggle="tab" href="#plan-for-the-day" role="tab" aria-controls="plan-for-the-day" aria-selected="false">Plan for the day</a>
</li>
<li class="nav-item">
<a class="nav-link" id="defining-location-tab" data-toggle="tab" href="#defining-location" role="tab" aria-controls="defining-location" aria-selected="false">Defining location</a>
</li>
<li class="nav-item">
<a class="nav-link" id="the-importance-of-alignment-tab" data-toggle="tab" href="#the-importance-of-alignment" role="tab" aria-controls="the-importance-of-alignment" aria-selected="false">The importance of alignment</a>
</li>
</ul>

<div id="slide-tabs" class="tab-content">

<div id="welcome" class="tab-pane fade show active" role="tabpanel" aria-labelledby="welcome-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/02-slides.html#1">
</iframe>

</div>

</div>

<div id="plan-for-the-day" class="tab-pane fade" role="tabpanel" aria-labelledby="plan-for-the-day-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/02-slides.html#outline">
</iframe>

</div>

</div>

<div id="defining-location" class="tab-pane fade" role="tabpanel" aria-labelledby="defining-location-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/02-slides.html#projections">
</iframe>

</div>

</div>

<div id="the-importance-of-alignment" class="tab-pane fade" role="tabpanel" aria-labelledby="the-importance-of-alignment-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/02-slides.html#alignment">
</iframe>

</div>

</div>

</div>

<div id="refs" class="references csl-bib-body hanging-indent" line-spacing="2">

<div id="ref-campbell_essentials_2011" class="csl-entry">

Campbell, J., and M. Shin. 2011. Essentials of geographic information systems. Saylor Foundation.

</div>

<div id="ref-lovelace_geocomputation_2019" class="csl-entry">

Lovelace, R., J. Nowosad, and J. Muenchow. 2019. Geocomputation with R. CRC Press.

</div>

</div>
