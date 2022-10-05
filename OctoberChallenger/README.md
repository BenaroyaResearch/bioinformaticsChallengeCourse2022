# Challenge 1

Volcano plots are extremely useful visualizations when dealing with multiple comparisons between two contrasts (or groups). Specifically for research at Benaroya, volcano plots appear frequently as visualizations of differential gene expression between groups of subjects or samples, and are one of the most frequent visualizations researchers request from the core.


Challenge 1 offers the opportunity for participants to convert a table of data into a useful volcano plot. All challenges in this course will be split into two parts, with the second part being a more challeneging additional task for anyone who feels confident in tackling a more detailed and advanced analyses. As mentioned earlier, we recommend the use of Rstudio, a development environment that simplifies and streamlines the process of coding in R. If there are issues with installing RStudio on your machine, please contact helpdesk for assistance.


The data for Challenge 1 was kindly offered by the Campbell Lab, and pertains to differences in gene expression between T-cells that are constituently expressing Foxo1, and Wildtype cells after stimulation/activation. As expected, there were extreme differences in gene expression in the treatment (CA Foxo1) and control groups, making these data useful as very clean example. Accompanying both parts of these challenge are snippets of **Pseudocode**. While psuedocode is not readable by R, it is useful for completing this exercise as it forms a organized series of human readable steps for the coder (you!) to convert into the R language.

The RDS datafiles required in this challenge can be downloaded from Box here:

https://bri.box.com/s/ljvhuwnozk320t0491by9qk894d8rzwq


# PART ONE

## Objective: Produce a Volcano Plot using the provided table of DE genes.

In part one, you will be converting a table of DE genes into a volcano plot, including labels of the most interesting/most differentially expressed genes. The table (topTagsStim.Rds) is located in the same Box folder as this readme.


## Pseudocode:

- **OPEN** RStudio and install and load the libraries you'll be using (recommended: ggrepel, ggplot2)
    - Helpful functions: install.packages, library()
- **LOAD** the data you'll be using (DGEgenes.Rds)
    - Helpful functions: setwd(), readRDS()
- **CREATE** a volcano plot object using the Foxo1DGE data: the x axis being the logFC, and the y axis being an appropriate transformation of the FDR columns of the data. Customize the plot as best you can.
    - Helpful functions: ggplot, geom_point, geom_text_repel, scale_color_manual, geom_hline, and theme.
- **SAVE** the volcano plot visualization.

# PART TWO

## Objective: Produce a table of DE genes from a provided DGE object, then produce a volcano plot using those data.

As you may have suspected, the input data for part one was not the first part of the analsyis -- a number of different processing and analytical steps were required to convert the count data from the transcriptome sequencing data into a table of differentially expressed genes. For part two, you will be performing these steps on a provided DGEobject (Foxo1Counts.RDS). A DGEobject is produced directly from counts data, and is a three-frame object containing the counts matrix of the genes, an annotation list of those genes, and an experimental design matrix (the last of these you will be making yourself in this part of the challenge). 

The full experiment from the Campbell lab included more than just stimulated treatments and controls. There were a total of five groups: Naive controls, Naive Treatment, Activated Controls, Activated Treatments, and a fifth activated treatment of activated cells under the effect of Demethylzeylasteral (ZST). The DGEobject has one column for each sample -- from the left most column to the right most, two naive controls, then three each of naive treatment, activate controls, activated treatments, and activated ZST. The comparison we're interested in for this challenge is group 3 vs group 4.

Part two is anticipated to be more challeneging that part one, and should be considered a 'stretch' objective and not frustrate participants.

## Psuedocode:

- **OPEN** RStudio and install/load packages (recommended: edgeR, limma, ggrepel, ggplot2)
- **LOAD** data (ie, readRDS Foxo1DGEList.Rds) Note: These data have already been normalized.
- **PERFORM** generalized linear model (quasi likelihood) analysis to compare the three control stim samples to three Foxo1 Stim samples (named GFP+ Stim in the object you just loaded), and extract the top Genes
    - Helpful functions: model.matrix, glmQLFit, makeContrasts, glmQLFTest or voom/lmfit/eBayes, topTag or topTable (depending on if you're using limma or edgeR)
- **USE** the top genes from the previous step to create a volcano plot as per Part I.
- **SAVE** the volcano plot.

This is the end of Challenge 1. Feel free to deposit any of your code and your visualizations in the 'codeSubmissions' folder within the Challenge 1 directory on Box.

