---
title: "Workflows for getting spatial data into R"
linktitle: "2: Getting your spatial data into R"
date: "2021-09-01"
toc: yes
menu:
  example:
    parent: Examples
    weight: 2
type: docs
editor_options: 
  chunk_output_type: console
---

Today's exercise and assignment will focus on getting different types of spatial data into R; exploring the CRS, extent, and resolution of those objects; and aligning objects with different projections. We'll look at ways to do this using the `sf`, `sp` (with `rgdal`), `raster`, and `terra` packages. 

## Getting started
Remember that we'll be using GitHub classroom so you'll need to introduce yourself to git and then clone the Assignment 2 repository. The instructions are in [Example 1](/example/01-example/)

## Loading the data
I created a few small shapefiles to help illustrate the basic workflow for bringing in both shapefiles and rasters. In the code below, you'll need to change the `filepath` object to match the path to our shared direction. This is not an ideal practice as it makes it challenging for others to automatically reproduce your analaysis, but I'm using here because GitHub can't handle large files like rasters or shapefiles and transferring files is more than I want to take on today....

I'll demonstrate loading the data using `rgdal`, `sp`, and `sf` packages (for shapefiles) and the `raster` and `terra` packages (for rasters).
















