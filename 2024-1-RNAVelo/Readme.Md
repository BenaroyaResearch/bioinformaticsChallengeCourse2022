## January 2024
## RNA Velocity

RNA velocity is an emerging technique for detecting and tracing the trajectory of cells across time. The core of the technique lays in the understanding of RNA splicing mechanics. For every transcript, there is a neutral steady state where the rate of transcript degredation matches the rate of transcript production, and when these two quantities are equal, the amount of a transcript in a cell will not change overtime. Conversely, if one of these values is higher than expected, then the transcript will increase or decrease over time respectively. By comparing the amount of spliced versus unspliced transcripts within a cell, we can predict what is transcriptional profile will look like when it reaches its steady state.

In the following box folder, there is a loom file. A loom file is a special format of single cell data that includes the ratios of spliced and unspliced transcripts for each gene in the matrix. It can be interpreted in Seurat the same as an hd5 file, with the additional data layer of the spliced/unspliced allowing us to visualize how the cells are changing overtime.

https://bri.box.com/s/h6xc3lzm8pxvy5fi8wvjb9lag3ejw91j

## Pseudocode:

- Step 1: Install required packages:
    - Recommended Packages: Seurat, velocyto.R, SeuratWrappers
- Step 2: Load in the loom file
    - Recommended functions: ReadVelocity
- Step 3: Convert the velocity file to a Seurat object
    - Recommended functions: asSeurat()
- Step 4: compute the UMAP of the RNA
    - Refer back to the UMAP challenge for information regarding this process!
- Step 5: Overlay the velocity data on the UMAP
    - Recommended functions: show.velocity.embedding.on.cor()

Make sure to upload your code and any visualizations to the following link:

https://bri.app.box.com/f/0dc787771cf34047bcc8a5b605a1fd8f