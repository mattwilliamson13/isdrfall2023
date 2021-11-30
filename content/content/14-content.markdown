---
title: "Modelling the probability of occurrence in space"
linktitle: "14: Distribution modelling"
date: "2021-11-30"
menu:
  content:
    parent: Course content
    weight: 14
type: docs
toc: true
bibliography: "../../static/bib/references.bib"
csl: "../../static/bib/ecology.csl"
slides: "14-slides"
---

Much of the motivation for this course stems from the need to develop spatially explicit predictions about the likelihood that a species or event occurs in places we haven’t sampled. In ecology, we call these models by several different names: species distribution models, resource selection functions, habitat selection models. More generally we might call these ‘event occurrence models,’ statistical models that describe the relations between a number of predictors and the occurrence of any event of interest (e.g., presence of crimes, species, conservation actions, etc. )

## Resources

-   <i class="fas fa-external-link-square-alt"></i> [Logistic regression: a brief primer](https://onlinelibrary.wiley.com/doi/10.1111/j.1553-2712.2011.01185.x) by (Stoltzfus 2011) is a nice introduction to logistic regression.

-   <i class="fas fa-external-link-square-alt"></i> [Point process models for presence-only analysis](https://besjournals.onlinelibrary.wiley.com/doi/10.1111/2041-210X.12352) by (Renner et al. 2015) provides a comprehensive overview and comparision of methods for analyzing presence-background datasets.

-   <i class="fas fa-external-link-square-alt"></i> [Is my species distribution model fit for purpose? Matching data and models to applications](https://onlinelibrary.wiley.com/doi/full/10.1111/geb.12268) by (Guillera-Arroita et al. 2015) is an excellent, concise description of the relations between data collection, statistical models, and inference.

-   <i class="fas fa-external-link-square-alt"></i> [Predicting species distributions for conservation decisions](https://onlinelibrary.wiley.com/doi/full/10.1111/ele.12189) by (Guisan et al. 2013) is a foundational paper describing some of the challenges with making conservation decisions based on the outcomes of species distribution models.

## Slides

{{% slide-buttons %}}

<ul class="nav nav-tabs" id="slide-tabs" role="tablist">
<li class="nav-item">
<a class="nav-link active" id="modelling-the-probability-of-occurrence-in-space-tab" data-toggle="tab" href="#modelling-the-probability-of-occurrence-in-space" role="tab" aria-controls="modelling-the-probability-of-occurrence-in-space" aria-selected="true">Modelling the probability of occurrence in space</a>
</li>
<li class="nav-item">
<a class="nav-link" id="motivations-tab" data-toggle="tab" href="#motivations" role="tab" aria-controls="motivations" aria-selected="false">Motivations</a>
</li>
<li class="nav-item">
<a class="nav-link" id="presence-absence-data-tab" data-toggle="tab" href="#presence-absence-data" role="tab" aria-controls="presence-absence-data" aria-selected="false">Presence absence data</a>
</li>
<li class="nav-item">
<a class="nav-link" id="presence-background-data-tab" data-toggle="tab" href="#presence-background-data" role="tab" aria-controls="presence-background-data" aria-selected="false">Presence background data</a>
</li>
<li class="nav-item">
<a class="nav-link" id="imperfect-detection-tab" data-toggle="tab" href="#imperfect-detection" role="tab" aria-controls="imperfect-detection" aria-selected="false">Imperfect detection</a>
</li>
</ul>

<div id="slide-tabs" class="tab-content">

<div id="modelling-the-probability-of-occurrence-in-space" class="tab-pane fade show active" role="tabpanel" aria-labelledby="modelling-the-probability-of-occurrence-in-space-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/14-slides.html#1">
</iframe>

</div>

</div>

<div id="motivations" class="tab-pane fade" role="tabpanel" aria-labelledby="motivations-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/14-slides.html#motivations">
</iframe>

</div>

</div>

<div id="presence-absence-data" class="tab-pane fade" role="tabpanel" aria-labelledby="presence-absence-data-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/14-slides.html#logistic">
</iframe>

</div>

</div>

<div id="presence-background-data" class="tab-pane fade" role="tabpanel" aria-labelledby="presence-background-data-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/14-slides.html#maxent">
</iframe>

</div>

</div>

<div id="imperfect-detection" class="tab-pane fade" role="tabpanel" aria-labelledby="imperfect-detection-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/14-slides.html#occupancy">
</iframe>

</div>

</div>

</div>

<div id="refs" class="references csl-bib-body hanging-indent" line-spacing="2">

<div id="ref-Guillera-Arroita2015" class="csl-entry">

Guillera-Arroita, G., J. J. Lahoz-Monfort, J. Elith, A. Gordon, H. Kujala, P. E. Lentini, M. A. McCarthy, R. Tingley, and B. A. Wintle. 2015. Is my species distribution model fit for purpose? Matching data and models to applications. Glob. Ecol. Biogeogr. 24:276–292.

</div>

<div id="ref-Guisan2013" class="csl-entry">

Guisan, A., R. Tingley, J. B. Baumgartner, I. Naujokaitis-Lewis, P. R. Sutcliffe, A. I. T. Tulloch, T. J. Regan, L. Brotons, E. McDonald-Madden, C. Mantyka-Pringle, T. G. Martin, J. R. Rhodes, R. Maggini, S. A. Setterfield, J. Elith, M. W. Schwartz, B. A. Wintle, O. Broennimann, M. Austin, S. Ferrier, M. R. Kearney, H. P. Possingham, and Y. M. Buckley. 2013. Predicting species distributions for conservation decisions. Ecol. Lett. 16:1424–1435.

</div>

<div id="ref-Renner2015" class="csl-entry">

Renner, I. W., J. Elith, A. Baddeley, W. Fithian, T. Hastie, S. J. Phillips, G. Popovic, and D. I. Warton. 2015. Point process models for presence‐only analysis. Methods Ecol. Evol. 6:366–379.

</div>

<div id="ref-Stoltzfus2011" class="csl-entry">

Stoltzfus, J. C. 2011. Logistic regression: A brief primer. Acad. Emerg. Med. 18:1099–1104.

</div>

</div>
