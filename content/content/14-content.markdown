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

-   <i class="fas fa-external-link-square-alt"></i> \[Logistic regression: a brief primer\] by (**Stoltzfus2011?**) is a nice introduction to logistic regression.

-   <i class="fas fa-external-link-square-alt"></i> \[Is my species distribution model fit for purpose? Matching data and models to applications\] by (**Guillera-Arroita2015?**) is an excellent, concise description of the relations between data collection, statistical models, and inference.

-   <i class="fas fa-external-link-square-alt"></i> \[Predicting species distributions for conservation decisions\] by (**Guisan2013?**) is a foundational paper describing some of the challenges with making conservation decisions based on the outcomes of species distribution models.

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
