---
title: "Introduction to class resources and data structures in R"
linktitle: "4: Introduction to class resources and data structures in R"
date: "2021-08-27"
due_date: "2021-09-03"
due_time: "11:59 PM"
toc: true
menu:
  assignment:
    parent: Exercises
    weight: 4
type: docs
editor_options: 
  chunk_output_type: console
---

**This is here for ease of reference; you should complete your assignment using your individual GitHub Classroom repositories**




## Your assignment

The goal for this assignment is to ensure that you:
- have access to our Rstudio server and shared data folder

- can access the assignments in Github Classroom

- are able to determine what data structure you're working with and what data types are contained with the object

- can succesfully knit an Rmarkdown document to html

## Step 1: Load your packages
In general, I do this in one code chunk at the beginning of the Rmarkdown document so that users know exactly what packages they'll need and can make decisions about if/how they want to install them.


```r
library(tidyverse)
```

```
## ── Attaching packages ─────────────────────────────────────── tidyverse 1.3.1 ──
```

```
## ✓ ggplot2 3.3.5     ✓ purrr   0.3.4
## ✓ tibble  3.1.3     ✓ dplyr   1.0.7
## ✓ tidyr   1.1.3     ✓ stringr 1.4.0
## ✓ readr   2.0.0     ✓ forcats 0.5.1
```

```
## ── Conflicts ────────────────────────────────────────── tidyverse_conflicts() ──
## x dplyr::filter() masks stats::filter()
## x dplyr::lag()    masks stats::lag()
```


## Step 2: Load the data

For the next few weeks, we'll be using data from the High Country News [Land Grab University](https://www.landgrabu.org/) project. These data depict the role of expropriated Indigenous land in funding the fifty-two land-grant universities in the United States. They contain information on nearly 11 million acres of Indigenous land tanke from ~250 tribes, bands and communities through a multitude of treaties and violent land seizures. Check it out as it will help you understand what these data are depicting.


```r
csv.list <- list.files('/opt/data/session02/CSVs/', pattern = "*.csv", full.names = TRUE)
data <- lapply(csv.list, function (x) read.csv(x))
```
* Question 1: what is `lapply` doing in the statement above?

* Question 2: what type of data is contained in the 3 column of the 2nd element of the `data` object? (show the code you used to figure it out by inserting a code chunk)?

* Question 3: what happens if you run the above code with the the `read_csv` function from the `tidyverse` package?

* Question 4: Use the first element of the `data` object to determine the total amount paid for the land depicted in that object (HINT: you'll need to coerce the data into a different format)

**Remember - edit this document and knit to .html within your GitHub Classroom repo and _commit_ _and_ _push_ those changes**
