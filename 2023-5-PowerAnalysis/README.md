## Challenge 7

Power Analyses are extremely important but often overlooked analyses that can give a large amount of forward-looking insight into future experiments, particularly in confirming if a hypothetical experimental design will be sufficient for answering the questions of the investigation based on known or hypothesized values.

In order to run a power analyses, you need four known or estimated values and a fifth value that you wish to predict based on the other four:

1. The size of the effect you're attempting to measure (ie, how much X effects Y)
2. The amount of variation in the predictor variable X
3. The amount of variation in your response variable Y that is explained by sources besides X
4. The Statistical Power you're willing to accept (ie, a percentage of the time you capture true positive results)
5. Sample size

Power analyses have mainly two uses -- a post-hoc power analysis that takes place after the experiment has been run, and a a-priori power analyses that informs the experimental design before you're committed. Post-hoc power analyses can be useful in determining caveats in interpreting your results (ie, if your statistical power is low due to low sample size, or informing you as to how big of an effect you can reasonable detect or miss). However, they are also prone to abuses, where the four known parameters can be tweaked unrealistically until the power analysis spits out a Statistical Power that makes the experiment seem very convincing when it is in fact lacking in some way.

Power analyses done a-priori are excellent tools, because they will tell you in advance how many samples you might need to retain statistical power in a number of different scenarios -- tolerating high variance in your predictors and response variables, small effect sizes, and so forth. One of the most thorough ways to do this is to **simulate** what data might look like with certain variances and effect sizes and see how the statistical power varies with sample sizes under those conditions.

Challenge 7 revolves around setting up and examining such a simulation. Since we're simulating data, there isn't any RDS files for download -- everything here is going to be generated via R.



Code submissions can be uploaded using the following link:

https://bri.app.box.com/f/46857cb7c11f46d09561975b168be334. This link will work, but upload attempts within Box won't work (you can't navigate to the codeSubmissions sub-folder in the online interface to Box and upload once there).

## PART ONE

Step one is to take one sample from a distribution of data. While you can technically use any four of the variables to predict the effect of the fifth against any one of the four, the most common approach in an a-priori power analysis is using an unknown sample size and seeing how that effects statistical power. Let's work with a pretty common distribution type -- x samples from a uniform distribution.

The way this looks as a mathematical function is Response Variable = effectSize * (Predictor Variable * Number of Samples) + (variation in Response Variable)

### Pseudocode:

OPEN RStudio and install and load the libraries you'll be using (recommended: tidyverse)

> Helpful functions: install.packages, library()
  
BUILD a distribution of possible X values from a uniform distribution

> Helpful functions: runif()
  
USE the prior distribution to inform the above mathematical formula and store it as a tibble/dataframe. Use whatever effect size, amounts of variation and sample size you're interested in.

> Helpful functions: mutate()

USE the tibble/dataframe as input for a regression analysis:

> Helpful functions: lm(), alternatively feols() from the package fixset

EXAMINE the results of your regression:

> Helpful functions: summary()


## PART TWO

Okay, so we have a single significance value from a single regression taken from a random draw from a uniform distribution. In order to have confidence this result is predictive of the outcome of using the values defined in our formula. We should run this a lot. Maybe a few thousands times.

### Psuedocode:

CREATE a for loop with many iterations that saves the results of each model outcome. A for loop simply runs the loop over and over again until a parameter is satisfied at which point it stops -- ie, for(i in 1:2000) will run the loop once for each integer between 1 and 2000 -- ie, 2000 times. Make sure to store the results in an initialized vector so we can examine them!
  
> Helpful functions: for(), the same formula/lm process as part 1, c() (for inializing the results objects)

CHECK to see how many of your iterations were statistically significant (ie, below p = .05)

> Helpful functions: mean(), sum()

The proportion of your significant results is your statistical power -- ie, if the proportion is .15 you have 15% statistical power.

This is the end of Challenge 7, but feel free to fiddle around with your underlying formulas to see how your ability to capture statistical power changes with more or less samples, more or less variation, and biggger and smaller effect sizes!

Submit your code to the box folder when you're done!
