# GetCleanData-Proj1

  This repository was setup up to hold my submission for Project 1 for the Getting and Cleaning Data class. The objective of Project 1 was to produce an R script and final dataset from the dataset "Human Activity Recognition Using Smartphones Data Set". The citation for this original dataset is: Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

  The repository contains:
  * this citation for the original dataset, an explanation of project objectives and the processing done to the data;
  * an R script ("run_analysis.R") that processes a data according to the instructions provided for project 1;
  * a codebood document ("CodeBook.md") that provides an explanation of the variables in the tidy dataset submitted separately to the course url.

  The orginal dataset provide by the citation above was processed with the R script "run_analysis.R" provided in this repo. An outline of the function of the R script follows:
  * reads in appropriate dataset components from a working directory containing the data;
  * subsets the main datasets (test and training) from 561 variables to a subset of ~79 variables, the means and standard deviations of key variables;
  * assembles components into complete dataset that include subject and activities index;
  * processes the dataset to provide the mean for each variable across activities and subjects; and,
  * writes the processed dataset to a text file "GetCleanDataProject.txt".

  The final dataset produced, "GetCleanDataProject.txt" was submitted separately.
  


==================

