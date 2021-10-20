---
title: "Truth and Cartography: Spatial Data Visualization"
linktitle: "9: Principles of Spatial Data Visualization"
date: "2021-10-18"
menu:
  content:
    parent: Course content
    weight: 9
type: docs
toc: true
bibliography: "../../static/bib/references.bib"
csl: "../../static/bib/ecology.csl"
slides: "09-slides"
---

We’ve spent the last few weeks learning about operations to compile geographic information into databases for visualization and analysis. Because analysis requires you to know something about your data and because visualization is a great way to explore your data (especially when there’s a lot of it), we’ll turn to that next. For the next few weeks, we’ll be looking at different ways to visualize spatial data and the associated approaches in `R`. Note that this could be an entire course by itself, but hopefully you’ll get enough to get started making publication quality maps by the time we’re done

## Resources

-   <i class="fas fa-book"></i> The [Introduction](https://f0nzie.github.io/dataviz-wilke-2020/introduction.html) and [Visualizing Geospatial Data](https://f0nzie.github.io/dataviz-wilke-2020/geospatial-data.html) chapters [Principles of Figure Design](https://f0nzie.github.io/dataviz-wilke-2020/proportional-ink.html) section in (Wilke 2019) provide a useful set of general introductions to data visualization principles and practce that is “platform agnostic” (though much of Wilke’s work is done in `R`).

-   <i class="fas fa-book"></i> The [Look at Data](https://f0nzie.github.io/dataviz-wilke-2020/introduction.html) and [Draw Maps](https://f0nzie.github.io/dataviz-wilke-2020/geospatial-data.html) chapters in (Healy 2018) revisits many of the same ideas, but focuses specifically on `R` and `ggplot2`.

-   <i class="fas fa-external-link-square-alt"></i> This post on [making maps people want to look at](https://www.esri.com/news/arcuser/0112/files/design-principles.pdf) from ESRI is a nice, concise depiction of some core principles for planning a cartographic project.

## Slides

{{% slide-buttons %}}

<ul class="nav nav-tabs" id="slide-tabs" role="tablist">
<li class="nav-item">
<a class="nav-link active" id="truth-and-cartography-tab" data-toggle="tab" href="#truth-and-cartography" role="tab" aria-controls="truth-and-cartography" aria-selected="true">Truth and Cartography</a>
</li>
<li class="nav-item">
<a class="nav-link" id="introduction-to-data-visualization-principles-tab" data-toggle="tab" href="#introduction-to-data-visualization-principles" role="tab" aria-controls="introduction-to-data-visualization-principles" aria-selected="false">Introduction to data visualization principles</a>
</li>
<li class="nav-item">
<a class="nav-link" id="extending-those-principles-to-maps-tab" data-toggle="tab" href="#extending-those-principles-to-maps" role="tab" aria-controls="extending-those-principles-to-maps" aria-selected="false">Extending those principles to maps</a>
</li>
<li class="nav-item">
<a class="nav-link" id="common-geographic-visualizations-tab" data-toggle="tab" href="#common-geographic-visualizations" role="tab" aria-controls="common-geographic-visualizations" aria-selected="false">Common geographic visualizations</a>
</li>
<li class="nav-item">
<a class="nav-link" id="looking-ahead-tab" data-toggle="tab" href="#looking-ahead" role="tab" aria-controls="looking-ahead" aria-selected="false">Looking ahead</a>
</li>
</ul>

<div id="slide-tabs" class="tab-content">

<div id="truth-and-cartography" class="tab-pane fade show active" role="tabpanel" aria-labelledby="truth-and-cartography-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/09-slides.html#1">
</iframe>

</div>

</div>

<div id="introduction-to-data-visualization-principles" class="tab-pane fade" role="tabpanel" aria-labelledby="introduction-to-data-visualization-principles-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/09-slides.html#dataviz">
</iframe>

</div>

</div>

<div id="extending-those-principles-to-maps" class="tab-pane fade" role="tabpanel" aria-labelledby="extending-those-principles-to-maps-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/09-slides.html#carto">
</iframe>

</div>

</div>

<div id="common-geographic-visualizations" class="tab-pane fade" role="tabpanel" aria-labelledby="common-geographic-visualizations-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/09-slides.html#spviz">
</iframe>

</div>

</div>

<div id="looking-ahead" class="tab-pane fade" role="tabpanel" aria-labelledby="looking-ahead-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/09-slides.html#future">
</iframe>

</div>

</div>

</div>

<div id="refs" class="references csl-bib-body hanging-indent" line-spacing="2">

<div id="ref-healy2018data" class="csl-entry">

Healy, K. 2018. Data visualization: A practical introduction. Princeton University Press.

</div>

<div id="ref-wilke2019fundamentals" class="csl-entry">

Wilke, C. O. 2019. Fundamentals of data visualization: A primer on making informative and compelling figures. O’Reilly Media.

</div>

</div>
