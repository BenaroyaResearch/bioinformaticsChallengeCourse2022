## May 2024
## Model Selection (ANOVA plus AICc)

Often when designing experiments, we have a range of predictor variables, where each predictor's contribution to the effect we're attempting to measure is unknown -- if it exists at all. In order to maximize our likelihood of measuring the right predictor variables, we often simply collect absolutely everything we can think of. This leads to a situation in which we have a plethora of predictor variables, some of which are informative and many of which are less so. Parsing these predictors and correctly assessing which model best explains your response variables is an important process.

In the following challenge, we'll run an ANalysis Of VAriance (ANOVA) on a subset of cytof data derived from the Sound Life Project. The data contains a number of absolute cell measurements (dependent variables) and a number of different predictor variables (sex, cohort [age], CMV disease state). We can use model testing via ANOVA and Akaike's Information Criteria Corrected (AICc) in order to determine which, if any, of our predictors are explaining a meaninful proportion of the variation in the response variable.

An RDS file containing a the subset of the Sound Life data can be found here: https://bri.box.com/s/1u69lmlbvsux00yk0o3gjrh6o87artje

## Pseudocode:

- Step 1: Install required packages:
    - Recommended Packages: AICcmodavg, broom.
- Step 2: Read in the RDS file and examine it
    - Recommended functions: readRDS(), View()
- Step 3: Decide on which variable and predictors you wish to test and run ANOVA
    - You can (and should!) make multiple models using differente predictors -- additive (+) and interactive (*) models using different combinations of predictors.
    - When comparing models, make sure to keep the dependent variable consistent -- the predictors and how they relate to each other can change but the AICcs we get are only relevant for different models explaining the same outcome
    - Relevant functions: aov()
- Step 4: check the weighted contribution of each model
    - recommended functions: aictab()
    - Remember that a delta AICc of >= 2 is indication of a 'significantly worse' model
- Step 5: Perform quality control/checks
    - There are a number of different ways to check for issues with a given model, including checking the residuals for homoscedasticity
    - Recommended functions: plot()
 
Submit code here: https://bri.app.box.com/f/c9db9bf06e6143d99c30d952b5a1ce8b
