## October 2023

### Flow Cleaning

One of the major challenges with interfacing between investigators and bioinformaticians is that one of the primary assays employed at BRI -- flow cytometry -- has a tendency to produce extremely heterogenous outputs that make standard processing pipelines difficult to implement.

Loading, merging, and checking the variables of flow data before analyses steps is an important effort for Bioinformaticians and the subject of this month's challenge course.

The data for this challenge was provided by Carolina and pertains to the TN18 project at BRI. There are several data files, inlcuding sample annotations, flow reports, and viability metrics on the samples within the following box folder:

https://bri.box.com/s/zjjttq2n8tazbtgfh4eu8sgawzvr6cnn

### Pseudocode:

Step 1: Load all data (annotations, reportables, and metrics.

- Useful functions: read_xlsx()

Step 2: Iteratively merge loaded files into a single data structure

- Useful functions: intersect(), left_join()

- Note that there may be entries in one input that don't exist in another input -- it is good practice to check with each merge step to see how many entries you lose -- left join will only join entries that exist in both inputs and you may lose a large numbber of entries due to non-matching names, etc.

Step 3: Handle (remove) entries with NA values

- is.na(), na.omit()

Step 4: Output tables and visualize variables (pick one or more variables to visualize)

- geom_hist() [for continuous variables]
- geom_bar() [for categorical variables]

Upload Save outputs and code in the following box folder:

https://bri.app.box.com/f/5808ce5e0dd24c64985d6d157c009a84

This is the end of October 2023's challenge! 