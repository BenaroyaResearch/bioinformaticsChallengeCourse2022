# Challenge 3

Many datasets that we interact with at BRI are very high dimensional datasets. Principal Compoennt Analysis make high dimensional data more interpretable by reducing the number of dimensions down to compoentns that best describe the variation in the dataset without losing large amonuts of information.

Challenge 4 focuses on using PCAs to look at a dataset of macrophages that have been trained on IFN-1. Training in immune cells has been well studied in certain memory subsets of immune cells, but only recently has it been suggested that short-term innate immune cell subsets may also respond to training. In this dataset, we found stark differences in gene expression between the various treatments and timepoints, making it an ideal dataset to use in this tutorial.

To begin this challenge, we've provided a counts dataset that's been paired down to just the protein coding genes. The RDS for this file can be accessed at the following link:

https://bri.box.com/s/c71bjt64yk5y20sqe610osp892vmbona

Code submissions can be uploaded using the following link: https://bri.app.box.com/f/ed174ba04a1049e08a4f8db61d4c2833. This link will work, but upload attempts within Box won't work (you can't navigate to the codeSubmissions sub-folder in the online interface to Box and upload once there). 


# PART ONE

## Objective: Perform PCA analysis on protein coding counts file

The first step in doing a PCA analysis is to compute the values of all PCAs in a dataset -- this can be many hundred PCAs, of which the vast majority won't be used in the final figure. Using counts per million (CPM) is also a good way to standardize your count data,


## Pseudocode:

- **OPEN** RStudio and install and load the libraries you'll be using (recommended: edgeR, dplyr)
    - Helpful functions: install.packages, library()
- **LOAD** the data you'll be using (Protein_Counts.Rds)
    - Helpful functions: setwd(), readRDS()
- **COMPUTE** all PCA values using counts per million of each gene. You will have to transform your matrix!
    - Helpful functions: edgeR::cpm(), t(), prcomp()
- **Extract** the PCs of interest -- this is up to personal preference, but only the top few PCs are usually extracted -- often only PC1/2 are plotted ultimately.
    - Helpful functions: dplyr::select()

# PART TWO

## Objective: Produce a scatterplot of your samples across PCAs 1 and 2


## Psuedocode:

- **OPEN** RStudio and install/load packages (recommended: ggplot2)
- **RESUME** your analysis -- either by loading saved dataframes of your PCAs from part 1, or simply working in the same R instance where those objects were constructed
- **CONSTRUCT** a scatterplot of the actual observed data, defining the color of the points by the treatment
    - Helpful functions: ggplot(), geom_point(), aes()
- **CUSTOMIZE** your plot as you like, including coloring the different time points, and labelling the axes as their correct PC designation.
    - Helpful functions:, scale_color_manual(), labs()
- **SAVE** your PCA plot.

This is the end of Challenge 4. Feel free to deposit any of your code and your visualizations using the following link: https://bri.app.box.com/f/ed174ba04a1049e08a4f8db61d4c2833 

