# Challenge 6

Challenge 6 will focus on using a pared down single cell dataset from project P458 -- the SLICC BAL dataset we've touched on before in earlier challenges. Here, we'll be looking at cells derived from clusters identified as mature macrophages and inflammatory monocytes. The original dataset was several tens of thousands of cells large, so for simplicity sake, this has been reduced down to 2,000 cells. In this experiment, both FeatureBarcoded antibody tags and RNA sequencing were used.

The box folder with the count matrices for both the RNA counts and the ADT counts can be found here, as well as a metadata object containing the annotations of the original cluster identities of these cells:

# PART ONE

## Objective: construct a Seurat Object

The first step in this process is to use apird to grab our annotations and the gene count matrices for our libraries of interest

## Pseudocode:

- **OPEN** RStudio and install and load the libraries you'll be using (necessary libraries: Seurat, recommended libraries: ggplot2)
    - Helpful functions: library()
- **BUILD** the initial Seurat object and name the initial assay
    - Helpful functions: CreateSeuratObject()
- **ADD** the remaining assay to the new Seurat object
    - Helpful functions: CreateAssayObject()
- **ADD** the cell annotations to the metadaya
    - Helpful functions: AddMetaData()

# PART TWO

## Objective: Perform PCA, UMAP dimensional reduction, and get gene expression of clusters and identities. These data are already normalized and scaled but with raw data you would need to do that as well.


## Psuedocode:

- **Perform PCA and UMAP** on an assay of your choosing (recommended: RNA)
    - Helpful functions: RunPCA(), RunUMAP()
- **Find Clusters and Nearest Neighbors** based on these reductions
    - Helpful functions: FindCluster(), FindNeighbors()
- **VISUALIZE** cells on a reduction, recommended: UMAP
    - Helpful functions: DimPlot(), or customized on a ggplot with geom_point().
- **DISCOVER** markers
    - Helpful Functions: FindMarkers(), FindAllMarkers(), Idents() (note the DE analyses will base on the currently active identity of the Seurat object)
    
Other things you can try if you want to play with the data more:

Making a heatmap of the average expression of the markers you've uncovered, or a multimodal analsyes combining the weighted contributions of both the RNA and ADT simultaneously. There are good tutorials through the Sajita lab website for these.

This is the end of Challenge 6. Feel free to deposit any of your code and your visualizations using the following link: 

