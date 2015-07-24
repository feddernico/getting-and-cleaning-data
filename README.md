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
 
Each different step is marked by a comment in the R script. The tidy data set created in step 5, called `export_data_mean`, is also written as a text file into the working directory.

## 1. Merging the training and test data sets

The first part of the script is dedicated to data loading. Firstly the script gets the train and test data - rispectively `X_train.txt` and `X_test.txt` files - and merges the two data set into a single one, called `data`.
Then it takes the data sets containing the train and test labels - `y_train.txt` and `y_test.txt` files - and merges them togheter into a single data set called `labels`.
Finally it takes the data sets containing the train and test subjects - `subject_train.txt` and `subject_test.txt` files - to create a single data set that is the merging of the former two.

## 2. Extracting measurements on the mean and standard deviation 

This second part of the script is focused on getting only the variables that contains the mean and standard deviation of each measurement. 
To accomplish this task, the script firstly gets the name of each measurement from a text file - `features.txt` file - and it loads them into a data set called `feature_names`.
It changes then the variable names of the former data set, using the more familiar names of `id_feat` - to identify each feature - and `feat_name` - that contains the name of each feature.
Then the script identifies only the variables that contains the substring "mean()" and "std()" in their names. To do so, I've used the grep with a regular expression, that searches the right pattern inside the `feat_name` variable.
The resulting variable matches are stored into a vector called matches, then the data variable names are modified to be more readable.
Finally is created a dataset with only the measurement on the mean and standard deviation for each mesurement, the resulting data set is called `data_mean_std`.

## 3. Naming the acvities in the data set

The third part of the script creates descritpive activity names to be placed into the data set.
To accomplish this task the script firstly gets the activity labels from `activity_labels.txt` file, and stores it as a data frame called `activity_labels`. 
Then renames the variable inside the former data set as `id_activity` and `activity_name`. 
After that it format the `activity_name` variable, removing the underscorse and transforming the string in lowercase.
Then it changes the labels id column with the activity name. Finally it renames the variable into the `labels` data set to `activity`.

## 4. Appropriately labeling the data set 

In this fourth step I only need to rename the variable name into the `subjects` data set, because I've already renamed the others needed.
Then I create the data set - called `export_data` - that is the column bind between three data sets: 
 1. Subjects data
 2. Activity labels data
 3. The data frame with only the measurements on the mean and standard deviation on each measurements

## 5. Creating an independent aggregated data set

The fifth and final step involves the creation of a new data set - called `export_data_mean` - that is an aggregation of the former one.
Using the `aggregate()` function, the scripts creates a new version of the data set with the average of each variable for each activity and each subject.
Then it renames the first and second variables of the former data set to activity and subject.
Finally it stores the data set as a text file - called `export_data_mean.txt` - into the working directory.   