---
title: "Building networks from spatial data"
linktitle: "5: Spatial data as networks"
date: "2021-09-20"
menu:
  content:
    parent: Course content
    weight: 5
type: docs
toc: true
bibliography: "../../static/bib/references.bib"
csl: "../../static/bib/ecology.csl"
slides: "05-slides"
---

Today we’ll be exploring one additional data model for spatial information, the network. We’ll explore what constitutes a network, generally. Then, we’ll think a bit about spatial networks. Finally, we’ll start to look at how we might build networks from geospatial data in `R`.

## Resources

These chapters are not ‘prerequisite’ reading for the week, but provide a lot of helpful background for raster proccessing in R.

-   <i class="fas fa-book"></i> [Exploring complex networks](https://www.nature.com/articles/35065725)(Strogatz 2001) is probably one of the most widely read articles describing networks and their role in a broad suite of disciplines. It is also written by a mathemetician which may make some of the language and formulae a little dense for you. That’s okay! Try to take the high-level points and leave the details for now.

-   <i class="fas fa-book"></i> [This editorial](https://besjournals.onlinelibrary.wiley.com/doi/10.1111/1365-2435.12799)(Poisot et al. 2016) is the opening to a Special Feature in *Functional Ecology* and provides some context for networks that are specific to ecologists.

-   <i class="fas fa-book"></i> The [Transportation Chapter](https://geocompr.robinlovelace.net/transport.html) in (Lovelace et al. 2019) makes the concepts of a network concrete (literally) by using a transportation route example to illustrate the various components of a network analysis in `R`.

## Slides

{{% slide-buttons %}}

<ul class="nav nav-tabs" id="slide-tabs" role="tablist">
<li class="nav-item">
<a class="nav-link active" id="defining-networks-tab" data-toggle="tab" href="#defining-networks" role="tab" aria-controls="defining-networks" aria-selected="true">Defining networks</a>
</li>
<li class="nav-item">
<a class="nav-link" id="common-applications-of-networks-tab" data-toggle="tab" href="#common-applications-of-networks" role="tab" aria-controls="common-applications-of-networks" aria-selected="false">Common applications of networks</a>
</li>
<li class="nav-item">
<a class="nav-link" id="spatial-networks-tab" data-toggle="tab" href="#spatial-networks" role="tab" aria-controls="spatial-networks" aria-selected="false">Spatial networks</a>
</li>
<li class="nav-item">
<a class="nav-link" id="building-networks-in-r-tab" data-toggle="tab" href="#building-networks-in-r" role="tab" aria-controls="building-networks-in-r" aria-selected="false">Building networks in R</a>
</li>
<li class="nav-item">
<a class="nav-link" id="estimating-network-propoerties-tab" data-toggle="tab" href="#estimating-network-propoerties" role="tab" aria-controls="estimating-network-propoerties" aria-selected="false">Estimating network propoerties</a>
</li>
</ul>

<div id="slide-tabs" class="tab-content">

<div id="defining-networks" class="tab-pane fade show active" role="tabpanel" aria-labelledby="defining-networks-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/05-slides.html#1">
</iframe>

</div>

</div>

<div id="common-applications-of-networks" class="tab-pane fade" role="tabpanel" aria-labelledby="common-applications-of-networks-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/05-slides.html#apps">
</iframe>

</div>

</div>

<div id="spatial-networks" class="tab-pane fade" role="tabpanel" aria-labelledby="spatial-networks-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/05-slides.html#spatial">
</iframe>

</div>

</div>

<div id="building-networks-in-r" class="tab-pane fade" role="tabpanel" aria-labelledby="building-networks-in-r-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/05-slides.html#building">
</iframe>

</div>

</div>

<div id="estimating-network-propoerties" class="tab-pane fade" role="tabpanel" aria-labelledby="estimating-network-propoerties-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/05-slides.html#properties">
</iframe>

</div>

</div>

</div>

<div id="refs" class="references csl-bib-body hanging-indent" line-spacing="2">

<div id="ref-lovelace_geocomputation_2019" class="csl-entry">

Lovelace, R., J. Nowosad, and J. Muenchow. 2019. Geocomputation with R. CRC Press.

</div>

<div id="ref-poisotnetworks" class="csl-entry">

Poisot, T., D. B. Stouffer, and S. Kéfi. 2016. Describe, understand and predict: Why do we need networks in ecology? Functional Ecology 30:1878–1882.

</div>

<div id="ref-strogatz2001exploring" class="csl-entry">

Strogatz, S. H. 2001. Exploring complex networks. nature 410:268–276.

</div>

</div>
