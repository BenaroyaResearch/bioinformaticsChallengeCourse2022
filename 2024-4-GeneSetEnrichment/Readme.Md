## April 2024
## Gene Set Enrichment Analyses

GeneSet Enrichment analyses are a set of tools used to determine if a reference set of genes is over-represented greater than expected amongst the genes that are upregulated in a treatment. Typically, investigators will have a list of genes that they believe to be responsible for or involved in the response to their experimental or observational treatment (ie, a stimulation or a disease). Geneset enrichment analyses are useful as a hypothesis testing process where investigators can come equipped with a hypothesis (ie, this set of genes controls or responds to the phenotype in question). Alternatively, you can also use reference database genesets as well (for example, GO terms are genesets associated with those ontologies that GSEA will determine their up/downregulated status in datasets).

In the following box folder, you will find an RDS from challenge 1: refer back to that challenge for a thorough description of these data, but in short -- these are the DE genes from consitutiently expressing Foxo1 T-cells versus wildtype (positive logfold changes are higher in CA Foxo1). For this challenge, there are two approaches (One for GO terms and one for a custom Geneset) and both or either can be persued.

Box folder with RDS.

Code submission folder.

## Pseudocode:

- Step 1: Install required packages:
    - Recommended Packages: clusterProfiler and bioConductor organism dataset (this organism is mouse).
- Step 2: Read in the RDS file and examine it
    - Recommended functions: readRDS(), View()
- Step 3: Decide on your test geneset
    - either use a GO ontology term (ie, cellular, biological, so forth) or if you're a T-cell researcher and curious, come up with a list of 10-20 genes you think might be involved in Foxo1 -- or just pick a random list of genes as a null hypothesis.
    - If you're doing a custom geneset, look up TERM2GENE -- in short, you need an additional dataframe with a row for each of your custom genes -- one column for the gene name, and the second column for the term (the function or pathway overall you think the gene belongs to).
- Step 4: perform GSEA analyses
    - recommended functions: GSEA() fir custom, GseGEO() for ontology terms
- Step 5: Visualize your results in your prefered way:
    - recommended options: dotplot(), emapplot()
