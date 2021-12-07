---
title: "Evaluating Model Performance"
linktitle: "15: Model evaluation"
date: "2021-12-06"
menu:
  content:
    parent: Course content
    weight: 15
type: docs
toc: true
bibliography: "../../static/bib/references.bib"
csl: "../../static/bib/ecology.csl"
slides: "15-slides"
---

We have reached the end of this introduction to the use of `R` as a Geographic Information System. You have (hopefully) learned a bit about the nature of spatial data, how to manipulate and visualize spatial data, and finally, how to build predictive models based on spatial data. In this final lecture, we’ll look at how to evaluate whether the models we fit are up to the tasks we have for them. This is, necessarily, a brief introduction to a topic that could take an entire course; however, upon completion you should now be able to take a spatial analysis from start to finish without ever having to leave `R`.

## Resources

-   <i class="fas fa-external-link-square-alt"></i> [A review of methods for the assessment of prediction errors in conservation presence/absence models](https://www.cambridge.org/core/journals/environmental-conservation/article/review-of-methods-for-the-assessment-of-prediction-errors-in-conservation-presenceabsence-models/FFA0880CE3C3591A5906B83C04727F46) by (Fielding and Bell 1997) has an accessible overview for many of the model evaluation methods implemented in the `dismo` package.

-   <i class="fas fa-book"></i> [Chapters 4 and 5](https://hastie.su.domains/ISLR2/ISLRv2_website.pdf) in the second edition of *An Introduction to Statistical Learning* by (James et al. 2021) provide excellent overviews of the general problem of classification and introductions to resampling-based techniques for assessing their fit.

-   <i class="fas fa-external-link-square-alt"></i>[Model selection using information criteria, but is the “best” model any good?](https://besjournals.onlinelibrary.wiley.com/doi/10.1111/1365-2664.13060) by (Mac Nally et al. 2018) is an excellent reminder of the differences between a good model and the best of a group of bad models. A must-read for those hoping to use multi-model inference to learn something about their study system.

## Slides

{{% slide-buttons %}}

<ul class="nav nav-tabs" id="slide-tabs" role="tablist">
<li class="nav-item">
<a class="nav-link active" id="evaluating-model-performance-tab" data-toggle="tab" href="#evaluating-model-performance" role="tab" aria-controls="evaluating-model-performance" aria-selected="true">Evaluating model performance</a>
</li>
<li class="nav-item">
<a class="nav-link" id="fit-and-prediction-tab" data-toggle="tab" href="#fit-and-prediction" role="tab" aria-controls="fit-and-prediction" aria-selected="false">Fit and prediction</a>
</li>
<li class="nav-item">
<a class="nav-link" id="thresholdbased-techniques-tab" data-toggle="tab" href="#thresholdbased-techniques" role="tab" aria-controls="thresholdbased-techniques" aria-selected="false">Threshold-based techniques</a>
</li>
<li class="nav-item">
<a class="nav-link" id="resamplingbased-techniques-tab" data-toggle="tab" href="#resamplingbased-techniques" role="tab" aria-controls="resamplingbased-techniques" aria-selected="false">Resampling-based techniques</a>
</li>
</ul>

<div id="slide-tabs" class="tab-content">

<div id="evaluating-model-performance" class="tab-pane fade show active" role="tabpanel" aria-labelledby="evaluating-model-performance-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/15-slides.html#1">
</iframe>

</div>

</div>

<div id="fit-and-prediction" class="tab-pane fade" role="tabpanel" aria-labelledby="fit-and-prediction-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/15-slides.html#theory">
</iframe>

</div>

</div>

<div id="thresholdbased-techniques" class="tab-pane fade" role="tabpanel" aria-labelledby="thresholdbased-techniques-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/15-slides.html#confusion">
</iframe>

</div>

</div>

<div id="resamplingbased-techniques" class="tab-pane fade" role="tabpanel" aria-labelledby="resamplingbased-techniques-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/15-slides.html#bootstrap">
</iframe>

</div>

</div>

</div>

<div id="refs" class="references csl-bib-body hanging-indent" line-spacing="2">

<div id="ref-Fielding1997" class="csl-entry">

Fielding, A. H., and J. F. Bell. 1997. A review of methods for the assessment of prediction errors in conservation presence/absence models. Environ. Conserv. 24:38–49.

</div>

<div id="ref-James2021" class="csl-entry">

James, G., D. Witten, T. Hastie, and R. Tibshirani. 2021. Classification. Pages 129–195 An introduction to statistical learning: With applications in r. Springer US, New York, NY.

</div>

<div id="ref-Mac_Nally2018" class="csl-entry">

Mac Nally, R., R. P. Duncan, J. R. Thomson, and J. D. L. Yen. 2018. Model selection using information criteria, but is the “best” model any good? J. Appl. Ecol. 55:1441–1444.

</div>

</div>
