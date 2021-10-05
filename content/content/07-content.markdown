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

These chapters are not ‘prerequisite’ reading for the week, but provide a lot of helpful background for attribute operations in R.

-   <i class="fas fa-book"></i> The [Tidy Data](https://r4ds.had.co.nz/tidy-data.html) and [Relational Data](https://r4ds.had.co.nz/relational-data.html) sections from **R For Data Science** (Wickham and Grolemund 2016) provide a great overview to data cleaning and manipulation functions available in the `tidyverse`.

-   <i class="fas fa-book"></i> [Doing things with multiple tables](https://ready4r.netlify.app/labbook/part-5-doing-useful-things-with-multiple-tables.html) has a lot of nice visual examples of for using the `_join` functions in `dplyr`.

-   <i class="fas fa-book"></i> This [article](https://www.cell.com/trends/ecology-evolution/fulltext/S0169-5347(21)00227-5) (Di Minin et al. 2021) provides a recent recap of a variety of reasons why we may need to combine data from multiple, often disparate, sources.

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

<iframe class="embed-responsive-item" src="/slides/06-slides.html#1">
</iframe>

</div>

</div>

<div id="workflows-for-spatial-analysis" class="tab-pane fade" role="tabpanel" aria-labelledby="workflows-for-spatial-analysis-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/06-slides.html#workflows">
</iframe>

</div>

</div>

<div id="databases-and-attributes" class="tab-pane fade" role="tabpanel" aria-labelledby="databases-and-attributes-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/06-slides.html#database">
</iframe>

</div>

</div>

<div id="common-attribute-operations" class="tab-pane fade" role="tabpanel" aria-labelledby="common-attribute-operations-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/06-slides.html#apps">
</iframe>

</div>

</div>

<div id="joining-aspatial-data" class="tab-pane fade" role="tabpanel" aria-labelledby="joining-aspatial-data-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/06-slides.html#joins">
</iframe>

</div>

</div>

</div>

<div id="refs" class="references csl-bib-body hanging-indent" line-spacing="2">

<div id="ref-di2021conservation" class="csl-entry">

Di Minin, E., R. A. Correia, and T. Toivonen. 2021. Conservation geography. Trends in Ecology & Evolution.

</div>

<div id="ref-wickham2016r" class="csl-entry">

Wickham, H., and G. Grolemund. 2016. R for data science: Import, tidy, transform, visualize, and model data. " O’Reilly Media, Inc.".

</div>

</div>
