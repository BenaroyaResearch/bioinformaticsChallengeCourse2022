# Challenge 3

Regression models are useful for describing the relationship between one (or multiple) factors and a response variable, particularly when you believe the response and the predictor variables are relatively colinear. Experimental dose response, age-outcome prediction of disease, and read depths vs gene count are all examples of the sort of information that a regression analysis may shed insight into.

Challenge 3 focuses on performing a regression analysis using previously published data generously offered by Alice Wiedeman and Alice Long. In this study, the investigators were interested in two different groups of patients -- those with rapid loss of C-peptides (the 'rapid' group) and those with slower disease progression (the 'slow' group). One confounding factor was that the subjects from this experiment were drawn from a wide range of ages. The hypothesis that inspired this regression analysis was that the the fast and slow patients would contribute differentially to DISCOV-R meta clusters, even after accounting for age as one of the terms of the regression model. 

For the purpose of this exercise, we'll be using a slimmed down version of these data focusing on just one of the metaclusters, Cluster 1, and looking at how age at draw and fast/slow condition predicts the % assignment to the cluster.

The CSV datafile required in this challenge can be downloaded from Box here:

https://bri.box.com/s/nz1bgscler7eabeygz3iiazoj0eodmov

Code submissions can be uploaded using the following link: https://bri.app.box.com/f/f103a2e7f11c487cb1b1707d5624ead1. This link will work, but upload attempts within Box won't work (you can't navigate to the codeSubmissions sub-folder in the online interface to Box and upload once there). 


# PART ONE

## Objective: Perform linear regression modelling of these data

In part one, will be reading in a dataframe provided in the box link above. The first step of a linear regression is to produce a linease model of your predictor factor(s) and determine how well that model predicts the outcome. Two main statistics are useful for evaluating a linear model -- the coefficient of determination (R-squared) and the associated P-value. The coefficient of determination is related to the spread of your residuals around the fitted line of your linear model. If the points are scattered far, your model does not describe a lot of the variation in your observation, and the R-squared will be relatively low. If the residuals are small and the points are close to your line, then your model is doing a good job and the R-squared will be high (R-squared can range from 0 to 1).

First, construct a model!


## Pseudocode:

- **OPEN** RStudio and install and load the libraries you'll be using (recommended: lmertest)
    - Helpful functions: install.packages, library()
- **LOAD** the data you'll be using (RegressionData.csv)
    - Helpful functions: setwd(), read.csv()
- **DESIGN** a linear model. You'll need at least one independent (predictor) variable and one dependent (response) variable. In this case, we think both age and cpeptide status have an effect on cluster assignment! Remember that factors can be additive or interactive.
    - Helpful functions: lm()
- **Evaluate** your model, paying special attention to the R-squared and p-values
    - Helpful functions: summary()

# PART TWO

## Objective: Produce a visualization of your linear model fitted to the actual observation of the data. In order to produce the line that represents your model, you will have to use values predicted from the model you made in part 1 to define the line.


## Psuedocode:

- **OPEN** RStudio and install/load packages (recommended: ggplot2, ggrepel)
- **RESUME** your analysis -- either by loading saved RDS of your models from part 1, or simply working in the same R instance where those models are
- **CONSTRUCT** a scatterplot of the actual observed data
    - Helpful functions: ggplot(), geom_point()
- **OVERLAY** lines based on the values predicted by your model
    - Helpful functions: predict(), geom_smooth()
- **CUSTOMIZE** your plot as you like, including coloring the different disease conditions, and labelling the plot with your test statistics -- R-squared or p-value of the models
    - Helpful functions: ggrepel(), scale_color_manual()
- **SAVE** your scatterplot with fitted lines.

This is the end of Challenge 3. Feel free to deposit any of your code and your visualizations using the following link: https://bri.app.box.com/f/f103a2e7f11c487cb1b1707d5624ead1 

