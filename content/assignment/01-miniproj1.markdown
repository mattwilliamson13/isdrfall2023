---
title: "Mini-Project 1: Building a spatial database"
linktitle: "1: Mini-Project 1"
date: "2021-08-27"
due_date: "2021-10-25"
due_time: "11:59 PM"
toc: true
menu:
  assignment:
    parent: Exercises
    weight: 1
type: docs
editor_options: 
  chunk_output_type: console
---

## Overview of the class project

The mini-projects and final project are intended to give you the chance to practice the workflows and techniques that we cover in class in the context of a complete analysis. Because each of you are in different stages of collecting your own data and because confronting datasets that aren't yours can help clarify important concepts and design elements, I'm asking you to develop an analysis of data that __isn't yours__. 

The goal here is to have you gain some experience finding spatial data, thinking about an interesting question where the geographic location is (at least partially) important in determining how we might think about the process that gives rise to the data, and developing an analysis and suite of visualizations that help you (and others) better understand that process.

## Mini-project 1

The goals for this phase of your final project are:
1) Articulate an interesting research question based on a dataset you'd like to learn more about.

2) Develop a spatial database that contains potentially relevant explanatory variables that you'd like to explore in the context of that research question.

3) Demonstrate an understanding of the various workflow elements involved in designing and constructing a spatial database for subsequent visualization and analysis.

### Finding Data

The first step in developing your projects will be figuring out what question you'd like to ask and what data you'll need to get there. There's a never-ending list of available data online, but you might start with the [Data Resources Page](/resource/data/). You're welcome to explore data that might end up being a part of your research (e.g., Census Data, landcover data), but I would encourage you to use the data to answer a question that isn't necessarily the focus of your research. This will give you the opportunity to learn about the data while also zooming out from your research questions.

### The assignment

Ultimately, you'll need a dependent variable and a number of explanatory variables organized in a format that will allow you to visualize and analyze them effectively and efficiently. To that end, I'd like you to:

* Choose a dependent variable that has a point geometry

* Choose sensible 'regions' (e.g., counties, ecoregions, watersheds, nations) that might serve to organize higher-order variables that describe the process that gives rise to your dependent variable. These should have a polygon or multipolygon geometry.

* Choose a suite (at least 3 variables) of tabular data that can be joined to either your points or regions to help further describe the context of the process of interest.

* Choose a suite (at least 3 variables) of spatial data (polygon or raster, at least 1 raster) of spatial data that can be joined to your database using `terra::extract`, `terra::zonal`, and `st_join`

* Construct your database using spatial and tabular joins and raster extractions, use `summarise` to generate at least one aggregated estimate at the regional level and `mutate` to create a new predictor that is derived from the data you've collected.

* Turn in a .Rmarkdown document that describes your research question, provides a brief overview of each dataset you are using (1-2 sentences describing what the data is, where it came from, and why you think it's relevant), and provides all of the necessary code (with annotation) to reproduce the production of your database. (__Remember this last bit is important as I'll need to be able to reproduce your analysis from end-to-end__)
