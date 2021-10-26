---
title: "Static maps in R"
linktitle: "7: Static maps in R"
date: "2021-10-20"
toc: yes
menu:
  example:
    parent: Examples
    weight: 7
type: docs
editor_options: 
  chunk_output_type: console
---

## Loading the data

We are going to use the database that we built last week as the starting place for making some static maps this week. We'll load that here along with some new (at least for this course) packages. The [`ggmap` package](https://github.com/dkahle/ggmap) allows easy downloads of basemaps from Google (requires a key) and Stamen for use in mapping (and within `ggplot2`). The [`cartogram` package](https://cran.r-project.org/web/packages/cartogram/readme/README.html) facilitates thematic changes of the geometry based on other attributes (e.g., population). The [`patchwork` package](https://patchwork.data-imaginist.com/) allows easy composition of multi-figure plots. I'm not going to be able to demonstrate the full capabilities of these packages in one example, but their webpages have tons of useful information. You should check those out!

























