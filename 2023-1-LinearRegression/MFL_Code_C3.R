## scripts to assess relationship of CyTOF phenotype in T1D to C-peptide levels and age

##### set up environment: set directory #####

rm(list=ls())
# opar <- par()
# setwd(
#   file.path(
#     "~", "Library", "CloudStorage", "Box-Box",
#     "Projects", "Long_lab_CyTOF_T1D_progression"))


##### set up environment: load packages #####

## load general packages
library(tidyverse)
theme_set(
  theme_bw(20) +
    theme(panel.grid.major = element_blank(),
          panel.grid.minor = element_blank(),
          panel.border = element_rect(color="black", fill = NA, size = 1),
          axis.text = element_text(color = "black"),
          axis.ticks = element_line(color = "black")))
update_geom_defaults("point", list(shape = 16))

## load analysis-specific packages
library(lmerTest)

# load my useful packages
library(miscHelpers)


##### load data from other sources (usually only do this when initially running analyses) #####

# load CyTOF data
dataCytof <-
  readr::read_csv("~/Library/CloudStorage/Box-Box/BioinformaticsChallengeCourse/Challenge 3/RegressionData.csv") %>%
  as.data.frame() %>%
  remove_all_NA_rowcols()
glimpse(dataCytof)


##### plot cluster 1 percentage by age and cPeptideRate #####
# this plot has independent slopes for each group, which differs from the published figure
ggplot(
  dataCytof,
  mapping = aes(
    x = ageYears,
    y = proportionCluster1 * 100,
    color = cPeptideRate)) +
  geom_point(size = 3, shape = 16) +
  geom_smooth(method = "lm", se = FALSE) +
  scale_color_manual(
    "C-peptide\ngroup",
    values = c("rapid" = "red", "slow" = "blue")) +
  labs(x = "Age at draw", y = "Cluster 1 %")


##### fit models of cluster proportions to cPeptideRate, adjusting for ageYTears #####

## model with interaction
lmProportionCluster1VsCPeptideRateAgeYearsWithInteraction <-
  lm(proportionCluster1 ~ cPeptideRate * ageYears,
     data = dataCytof)
summary(lmProportionCluster1VsCPeptideRateAgeYearsWithInteraction)
# plot(lmProportionCluster1VsCPeptideRateAgeYearsWithInteraction)
# interaction term is clearly not significant; proceed without interaction terms

## model without interaction term
lmProportionCluster1VsCPeptideRateAgeYears <-
  lm(proportionCluster1 ~ cPeptideRate + ageYears,
     data = dataCytof)
summary(lmProportionCluster1VsCPeptideRateAgeYears)
# plot(lmProportionCluster1VsCPeptideRateAgeYears)


##### make plots with common slope, using predictions from linear model #####
# there may be a simpler way to do this
dataCytof <-
  dataCytof %>%
  cbind(
    proportionCluster1Predicted =
      predict(lmProportionCluster1VsCPeptideRateAgeYears))

Figure <- ggplot(
  data = dataCytof,
  mapping = aes(
    x = ageYears, y = proportionCluster1 * 100,
    color = cPeptideRate, group = cPeptideRate)) +
  geom_point(size = 4, shape = 1) +
 # geom_point(size = 4, shape = ) +
  # add lines, with black background to make them stand out
  geom_smooth(
    method = "lm",
    mapping = aes(y = proportionCluster1Predicted * 100),
    size = 3.0, se = FALSE, color = "black", linetype = "42") + # control dash length to match
  geom_smooth(
    method = "lm",
    mapping = aes(y = proportionCluster1Predicted * 100),
    size = 2.0, se = FALSE, linetype = "63") + # control dash length to match
  scale_color_manual(
    "C-peptide\ngroup",
    values = c("rapid" = "red", "slow" = "blue")) +
  labs(x = "Age at draw", y = "Cluster 1 %")
