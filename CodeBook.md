Code Book
=========

The original data set was the result of the research "Human Activity Recognition Using Smartphones". 
A detailed description of the work made can be found here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
To download the original data set, used to run all the analysis, follow this link: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
The zip file contains various data sets, but only a few was used to perform the analysis. The analysis follow 5 steps required by the course project assignment.

Performed Analysis
------------------

The run_analysis.R script does the following:
 1. Merges the training and the test sets to create one data set.
 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
 3. Uses descriptive activity names to name the activities in the data set
 4. Appropriately labels the data set with descriptive variable names. 
 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Each different step is marked by a comment in the R script. The tidy data set created in step 5, called export_data_mean, is also written as a text file into the working directory.



1. Merging the training and test data sets
------------------------------------------

