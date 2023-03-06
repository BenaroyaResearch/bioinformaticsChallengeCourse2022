# Challenge 5

So far in this course we've focused on taking data that has been preprocessed or otherwise curated and performed analysis and visualization. However, when interacting with an actual project, the files do not appear first as RDS files to be loaded into R. Rather, they are incorporated into the BRI database and are accessed using a custom R package called apird.

In Challenge 5, we will be familiarizing ourselves with the use of apird to access the BRI database in order to pull down gene counts for libraries and their annotation. The project we'll be working with is P356 -- a project that Kaz Ninomiya led that was published out of Steve Ziegler's lab. This study was interested in looking at how a tumor derived cytokine (thymic stromal lymphopoietinm TSLP) affected the expression of T-regulatory cells.

Unlike previous challenges, there are no data files in RDS format in the box folder. Rather, you'll be pulling these down with apird. The instructions for installing apird are below.

Code submissions can be uploaded using the following link: https://bri.app.box.com/f/2aa763b73111448e8d6bc4d13efa2a12. This link will work, but upload attempts within Box won't work (you can't navigate to the codeSubmissions sub-folder in the online interface to Box and upload once there). 

# PART ZERO

Install apird:


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

# PART TWO

## Objective: Visualize the quality of the dataset and cut out the samples that aren't up to scratch. For bulk datasets, we usually use a threshold of mean CV and percent of reads aligned to the genome


## Psuedocode:

- **CONSTRUCT** a scatterplot of the actual observed data, defining the color of the points by the treatment
    - Helpful functions: ggplot(), geom_point(), aes()
- **CUSTOMIZE** your plot as you like, including coloring the different time points, and labelling the axes as their correct PC designation.
    - Helpful functions:, scale_color_manual(), labs()
- **SAVE** your PCA plot.

This is the end of Challenge 4. Feel free to deposit any of your code and your visualizations using the following link: https://bri.app.box.com/f/ed174ba04a1049e08a4f8db61d4c2833 

