---
title: "Combining raster and vector data"
linktitle: "6: Combining raster and vector data"
date: "2021-10-06"
toc: yes
menu:
  example:
    parent: Examples
    weight: 6
type: docs
editor_options: 
  chunk_output_type: console
---

## Load your libraries and the data


# Step 2: Filter the data
You'll need to filter the PADUS dataset so that it only contains the [Gap Status 1](https://www.usgs.gov/core-science-systems/science-analytics-and-synthesis/gap/science/pad-us-data-overview?qt-science_center_objects=0#qt-science_center_objects) protected areas. Check out the link to learn more about the different protection statuses. 


# Step 3: Get the data for median income by county
Follow the example to use the `tidycensus` package to download median income by county (along with its geometry).

# Step 4: Use a spatial join
Use `st_join` to connect your PAs dataset with every county within 100km and then use `group_by` and `summarise` to take the mean value of the median income data for each PA. By the time you are done with this step you should have the same number of rows that you had after your initial filter of the PAs (step 2).

# Step 5: Buffer your PAs
In order to get the raster data from the same area that you just estimated median income, you'll need to buffer the PAs by 25km

# Step 6: Crop all of the rasters to the extent of your buffered PA dataset
Before you start doing a bunch of raster processing you'll want to get rid of the parts you don't need. Do that here. Remember you'll want all of your rasters to have the same CRS.


# Step 8: Extract the data
Now that you've got all the data together, it's time to run the extraction. Remember that extractions run faster when all of the layers are "stacked", but that requires you to use `resample` to get to the same origins and extents. Use `zonal` to estimate the `mean` and `sd` for each of the mammalian richness, land value, and NDVI datasets. Then use `extract` (without specifying a function) to estimate the same thig. Use `system.time()` to bencmark each approach.

# Step 9: Join back to your PA dataset
Now that you have the raster data extracted and summarized (into the mean and standard deviation) for each buffered PA, you should be able to join it back to the dataset you created in steps 2-4. Do that here.
