Code Book
=========

The original data set was the result of the research "Human Activity Recognition Using Smartphones". 
A detailed description of the work made can be found here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

To download the original data set, used to run all the analysis, follow this link: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The zip file contains various data sets, but only a few was used to perform the analysis. The analysis follow 5 steps required by the course project assignment.

It also contains a complete data sets and variable description, useful to deeply understand all the files contained into the zip file.

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

The first part of the script is dedicated to data loading. Firstly the script gets the train and test data - rispectively X_train.txt and X_test.txt files - and merges the two data set into a single one, called data.
Then it takes the data sets containing the train and test labels - y_train.txt and y_test.txt files - and merges them togheter into a single data set called labels.
Finally it takes the data sets containing the train and test subjects - subject_train.txt and subject_test.txt files - to create a single data set that is the mergine of the former two.

2. Extracting only the measurements on the mean and standard deviation for each measurement
-------------------------------------------------------------------------------------------

This second part of the script is focused on getting only the variables that contains the mean and standard deviation of each measurement. 
To accomplish this task, the script firstly gets the name of each measurement from a text file - features.txt file - and it loads them into a data set called feature_names.
It changes then the variable names of the former data set, using the more familiar names of id_feat - to identify each feature - and feat_name - that contains the name of each feature.
Then the script identifies only the variables that contains the substring "mean()" and "std()" in their names. To do so, I've used the grep with a regular expression, that searches the right pattern inside the variable feat_name.
The resulting variable matches are stored into a vector called matches, then the data variable names are modified to be more readable.
Finally is created a dataset with only the measurement on the mean and standard deviation for each mesurement, the resulting data set is called data_mean_std.

3. Using descriptive activity names to name the acvities in the data set
------------------------------------------------------------------------

The third part of the script creates descritpive activity names to be placed into the data set.
To accomplish this task the script firstly gets the activity labels from activity_labels.txt file, and stores it as a data frame called activity_labels. 
Then renames the variable inside the former data set as id_activity and activity_name. 
After that it format the activity_name variable, removing the underscorse and transforming the string in lowercase.
Then it changes the labels id column with the activity name. Finally it renames the variable into the labels data set into activity.

4. Appropriately labeling the data set with descriptive variable names
----------------------------------------------------------------------

In this fourth step I only need to rename the variable name into the subjects data set, because I've already renamed the others needed.
Then I create the data set - export_data - that is the column bind between three data sets: 
 1. Subjects data
 2. Activity labels data
 3. The data frame with only the measurements on the mean and standard deviation on each measurements

5. From the data set in step 4, creating a second, independent data set with the AVG of each variable for each activity and each subject
----------------------------------------------------------------------------------------------------------------------------------------

The fifth and final step involves the creation of a new data set - called export_data_mean - that is an aggregation of the former one.
Using in fact the aggregate function, the scripts creates a new version of the data set with the average of each variable for each activity and each subject.
Then it renames the first and second variables of the former data set to activity and subject.
Finally it stores the data set as a text file into the working directory.  