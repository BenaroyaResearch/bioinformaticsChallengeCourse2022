## March 2024
## Working Geo datasets

Reproducibility in science is extremely important, and in this effort, an enormous amount of data has been collected on repositories such as IMPORT and GEO. Working with these datasets can be extremely valuable as comparisons to ongoing work at BRI, or as meta studies in which no new data is generated, but existing data is reanalyzed in new ways or in conjunction with other data in metastudies that shed new insight.

In this challenge, we will be accessing a GEO dataset of cultured aveolar macrophages of various cell types. The GSE accession number is GSE188945. The important acquisitions for analysis are the annotations (so we know which sample is which) and the count matrices. Once we have those, we can repeat previous analyses from this course on those data.

## Pseudocode:

- Step 1: Install required packages:
    - Recommended Packages: GEOquery -- **note that this requires Bioconductor (ie, BiocManager::install) to acquire**.
- Step 2: Acquire count matrices and annotations
    - Recommended functions: getGeo(), **make sure getGPL is set to TRUE, which is the default**.
- Step 3: Assess structure of the geo File
    - Recommended functions: glimpse()
- Step 4: perform a previous analysis from this course on this dataset
    - Low hanging fruit -- limma or EdgeR DEG assessment between smoking and non-smoking conditions. Refer back to Challenge #2.

Make sure to upload your code and any visualizations to the following link:

https://bri.app.box.com/f/dd60675fcaa64d5092840af4fd833a3e
