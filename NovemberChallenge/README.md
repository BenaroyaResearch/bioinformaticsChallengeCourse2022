## Challenge 2

Heatmaps are another popular method to visualize differentially expressed genes between groups, and have the added benefit of having flexible axes annotations that can overlay important information such as sample groups, sample status, and side-paneled graphs of important measurements for each gene or subject in the Heatmap.

In Challenge 2, we will be producing a heatmap using information offfered by the Mikocenic lab. In this study, 8 individual patients suffering from traumatic lung injury had brochial lavage sampled. Four of these samples were sampled multiple times (v1 and v2), producing a total of 12 samples of individuals are various time points and with various degrees of disease serverity, including half of the patients with Acute Respitory Distress Syndrome (ARDS). These samples were sequenced via 10x single cell sequencing.

There are two RDS files available in the Challenge2 folder at the attached box link.

The AverageExpressionMatrix.Rds contains the average expression of each individuals cells at a subset of differentially expressed genes found to be varying across individual patients. This object will form the backbone of the heatmap analysis.

annotationHeatmap.Rds contains an annotation file with a few columns of information pertaining to the samples that will be useful for annotating the heatmap object.

The RDS datafiles required in this challenge can be downloaded from Box here:

https://bri.box.com/s/ljvhuwnozk320t0491by9qk894d8rzwq

Code submissions can be uploaded using the following link: https://bri.app.box.com/f/07858604a1d94397b74e5d78a6d9fb3b. This link will work, but upload attempts within Box won't work (you can't navigate to the codeSubmissions sub-folder in the online interface to Box and upload once there).

##PART ONE

Objective: Produce a Heatmap provided a table of Average Gene Expression values.

In part one, you will be converting a matrix of Average Expression values into a heatmap.

###Pseudocode:

OPEN RStudio and install and load the libraries you'll be using (recommended: complexHeatmap)
Helpful functions: install.packages, library()
LOAD the data you'll be using (sampleAverageExpressionMatrix.Rds)
Helpful functions: setwd(), readRDS()
CREATE a heatmap object using the scaled sample expression matrix. Note you will have transform the matrix in order to rotate it into the correct input if using ComplexHeatmap.
Helpfulfunctions: scale(), t(), ComplexHeatmap::Heatmap() (this latter function can take a lot of robust arguments, which will customize your heatmap!)
SAVE the heatmap visualization.

##PART TWO

Objective: Annotate the Heatmap using the Annotation object

A basic heatmap is informative, but can be made far more so by attaching information. The annotation object contains a number of interesting annotations -- including which visit the sample corresponds to, which donor the sample belongs to, as well as a proportion of the cells assigning to a particular cluster of interest. This cluster was discovered to be associated with patients as they began to convalese, and so should be higher in the second visit samples. All of these can be attached to the heatmap to increase its informative power.

Psuedocode:

OPEN RStudio and install/load packages (recommended: ComplexHeatmap, ggplot2)
LOAD data (readRDS annotationHeatmap.Rds)
CREATE a bargraph object (no error bars, as there is only one average sample per individual).
Helpful functions: ggplot(), geom_bar
Attach annotations to the heatmap function
Helpful functions: ComplexHeatmap::left_annotation, ComplexHeatmap::right_annotation (you can also use top or bottom!)
SAVE the new heatmap.
