Getting and Cleaning Data
=========================

This repo contains the R script to execute all the analysis made to accomplish the Getting and Cleaning Data course, held by the John Hopkins University over Coursera.
 
Steps needed to run the analysis
--------------------------------

 1. Donwload the run_analysis.R in a folder. For example, in windows, in a folder like C:\Users\YourUserName\Documents\R\getting-and-cleaning-data\
 2. Download and unzip the file from  url: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
 3. Put the content of the folder "UCI HAR Dataset" in a subfolder called data, in the same directory of the run_analysis.R script
 4. Open R or RStudio and set the correct working directory with the command setwd("C:\Users\YourUserName\Documents\R\getting-and-cleaning-data\")
 5. Open the run_analysis.R script and execute all the instructions inside
 
The tidy data set created in step 5 of the course project assignment is export_data_mean.txt, and will be created into the working directory