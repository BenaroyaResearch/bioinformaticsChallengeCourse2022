# Challenge 5

So far in this course we've focused on taking data that has been preprocessed or otherwise curated and performed analysis and visualization. However, when interacting with an actual project, the files do not appear first as RDS files to be loaded into R. Rather, they are incorporated into the BRI database and are accessed using a custom R package called apird.

In Challenge 5, we will be familiarizing ourselves with the use of apird to access the BRI database in order to pull down gene counts for libraries and their annotation. The project we'll be working with is P356 -- a project that Kaz Ninomiya led that was published out of Steve Ziegler's lab. This study was interested in looking at how a tumor derived cytokine (thymic stromal lymphopoietinm TSLP) affected the expression of T-regulatory cells.

Unlike previous challenges, there are no data files in RDS format in the box folder. Rather, you'll be pulling these down with apird. The instructions for installing apird are below.

Code submissions can be uploaded using the following link: https://bri.app.box.com/f/2aa763b73111448e8d6bc4d13efa2a12. This link will work, but upload attempts within Box won't work (you can't navigate to the codeSubmissions sub-folder in the online interface to Box and upload once there). 

# PART ZERO

Install apird:

https://github.com/BenaroyaResearch/apird

If you do not have access to the BRI github, please contact Robyn Meshulam (RMeshulam@benaroyaresearch.org). You will have to have a general github account/login before it can be assigned permissionso to access the BRI github.


# PART ONE

## Objective: acquire library and annotation files from the database

The first step in this process is to use apird to grab our annotations and the gene count matrices for our libraries of interest

## Pseudocode:

- **OPEN** RStudio and install and load the libraries you'll be using (mandatory: apird, you will need your login for apird functions!)
    - Helpful functions: library()
- **PULL** the names of the libraries from the project in question ('P356-1')
    - Helpful functions: apird::getProjectLibs()
- **PULL** the annotations for the libraries acquired in the previous step
    - Helpful functions: apird::getAnno()
- **PULL** the gene counts of the same libraries
    - Helpful functions: apird::getGeneCounts()
- **MERGE** these objects together into a 'super' object
    - helpful functions: merge()

# PART TWO

## Objective: Visualize the quality of the dataset and cut out the samples that aren't up to scratch. For bulk datasets, we usually use a threshold of mean CV and percent of reads aligned to the genome.


## Psuedocode:

- **VISUALIZE** the libraries by their total aligned reads, with a valid cutoff of your choosing (the default is 1,000,000 reads):
    - Helpful functions: ggplot(), geom_col(), aes(), geom_hline(), order(), scale_x_discreet()
- **VISUALIZE** the libraries as a scatterplot of aligned reads versus mean CV with cutoffs -- play around with your cutoffs to see what retains and loses samples:
    - Helpful functions: ggplot(), geom_point(), aes(), geom_hline(), geom_vline()
- **CUT** libraries out that no longer make the QC thresholds
    - Helpful functions: dplyr::filter()
- **SAVE** your Visualizations and the final merged designed object after making cuts.

This is the end of Challenge 5. Feel free to deposit any of your code and your visualizations using the following link: https://bri.app.box.com/f/2aa763b73111448e8d6bc4d13efa2a12 

