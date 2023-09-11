# Challenge #8
## Discov-R

Discov-R is an analysis method developed at BRI, with the aim of using FACS information to overlay parent populations of cells over a 'rare' subpopulation of cells. The intention is to use the resulting overlaps of parent/child clusters to describe rare subpopulations which might otherwise be difficult to identify.

The input files for Discov-R are a manifest of fcs files, and a manifest of markers. The manifest of fcs files contains pathways to potentially dozens of fcs files. The early stages of discov-R require using these two files to build the experiment from the fcs files. This part of the process has been done for you (mainly due to how tedious it would be to update the FCS manifest pathway directory for each participants unique pathway to the box folder). Anyone who is specifically interested in the step that generates the original Experiment can email me at mlawrance@benaroyaresearch.org for a walkthrough.

The initial Experiment is located as an RDS file at: https://bri.box.com/s/lfdb00swep45pz8wm3zm0feptt888qkr

Using this object, we will be building heatmaps of the various markers at all the metaclusters, as well as producing a combined heatmap of the z scores of all the metaclusters as defined by Discov-R together.

The installation and detail tutorialfor discov-R are located here: https://github.com/BenaroyaResearch/briDiscovr

## Pseudocode:

Install and mount packages, including discov-R
- recommended packages: discov-R, ComplexHeatmap, tidyverse, dplyr

Discover and assign metaclusters to cells
- recommended functions metaclusterDiscovery(), getMetaclusterOccupancy()

Make heatmaps of markers for clusters
- recommended functions: makeMetaclusterHeatmaps(), be warned this will dump your results into your working directory by default
Combine metacluster information into a long form dataframe for construction of the heatmap
-recommended functions: pivot_longer, select, mutate

Produce heatmap
- recomended functions: rowAnno(), Heatmap()

This ends Challenge 8. Code submissions and figures can be uploaded here:

https://bri.app.box.com/f/15ef9d63f7b945f3904b1b2b12337c5c
