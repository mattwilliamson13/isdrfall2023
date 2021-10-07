---
title: "Building spatial databases"
linktitle: "5: Spatial databases in R"
date: "2021-10-06"
toc: yes
menu:
  example:
    parent: Examples
    weight: 5
type: docs
editor_options: 
  chunk_output_type: console
---
One of the strongest justifications for using `R` as a Geographic Information System (GIS) is the ability to construct complete, reproducible workflows from data entry and cleaning through analysis and visualization. Constructing databases that combine spatial and tabular data is at the core of those workflows. This example should help you practice some of the key database operations that you may encounter as you conduct your own analysis.

# Load the datasets and packages

The data we'll be using for today's example and assignment are a mix of spatial and tabular data. The tabular data come from the [Land-Grab University(LGU)](https://www.landgrabu.org/) data on parcel sales and the National Park Service's (NPS) [annual visitation data](https://irma.nps.gov/STATS/Reports/National) for NPS-operated units in the Intermountain and Pacific West regions. The spatial data is a shapefile from the US Protected Area Database (PADUS) and a shapefile containing the parcels described by the Land-Grab University parcel database. We'll load each of those here and take a look at features and fields in each dataset. __Remember that you'll need to change the paths to match your own data.__




















