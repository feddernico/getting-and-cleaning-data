# Code Book

The original data set was the result of the research `Human Activity Recognition Using Smartphones`. 
A detailed description of the work made can be found here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

To download the original data set, used to run all the analysis, follow this link: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The zip file contains various data sets, but only a few was used to perform the analysis. The analysis follow 5 steps required by the course project assignment.

It also contains a complete data sets and variable description, useful to deeply understand all the files contained into the zip file.

## Performed Analysis

The run_analysis.R script does the following:
 1. Merges the training and the test sets to create one data set.
 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
 3. Uses descriptive activity names to name the activities in the data set
 4. Appropriately labels the data set with descriptive variable names. 
 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## The export_data_mean data set

The `export_data_mean` is the tidy data set created following the 5 steps of the course project assignment.

It is composed by 180 records and 68 variables. The following is a complete list of that variables with the corrisponding description:


| Variable Name				 | Description				    									| Format	           | Units		          |
|----------------------------|------------------------------------------------------------------|----------------------|----------------------|
|activity					 |The activity name		    										| String               |					  |
|subject					 |The subject of the experiment										| Integer              | [1:30]				  |
|tBodyAcc-mean-X             |Time domain body acceleration mean on the X axis					| Double			   | [-1:1]				  |
|tBodyAcc-mean-Y             |Time domain body acceleration mean on the Y axis					| Double			   |					  |
|tBodyAcc-mean-Z             |Time domain body acceleration mean on the Z axis					| Double			   |					  |
|tBodyAcc-std-X              |Time domain body acceleration standard deviation on the X axis  	|					   |					  |
|tBodyAcc-std-Y              |																	|					   |					  |
|tBodyAcc-std-Z              |																	|					   |					  |
|tGravityAcc-mean-X          |																	|					   |					  |
|tGravityAcc-mean-Y          |																	|					   |					  |
|tGravityAcc-mean-Z          |																	|					   |					  |
|tGravityAcc-std-X           |																	|					   |					  |
|tGravityAcc-std-Y           |																	|					   |					  |
|tGravityAcc-std-Z           |																	|					   |					  |
|tBodyAccJerk-mean-X         |																	|					   |					  |
|tBodyAccJerk-mean-Y         |																	|					   |					  |
|tBodyAccJerk-mean-Z         |																	|					   |					  |
|tBodyAccJerk-std-X          |																	|					   |					  |
|tBodyAccJerk-std-Y          |																	|					   |					  |
|tBodyAccJerk-std-Z          |																	|					   |					  |
|tBodyGyro-mean-X            |																	|					   |					  |
|tBodyGyro-mean-Y            |																	|					   |					  |
|tBodyGyro-mean-Z            |																	|					   |					  |
|tBodyGyro-std-X             |																	|					   |					  |
|tBodyGyro-std-Y             |																	|					   |					  |
|tBodyGyro-std-Z             |																	|					   |					  |
|tBodyGyroJerk-mean-X        |																	|					   |					  |
|tBodyGyroJerk-mean-Y        |																	|					   |					  |
|tBodyGyroJerk-mean-Z        |																	|					   |					  |
|tBodyGyroJerk-std-X         |																	|					   |					  |
|tBodyGyroJerk-std-Y         |																	|					   |					  |
|tBodyGyroJerk-std-Z         |																	|					   |					  |
|tBodyAccMag-mean            |																	|					   |					  |
|tBodyAccMag-std             |																	|					   |					  |
|tGravityAccMag-mean         |																	|					   |					  |
|tGravityAccMag-std          |																	|					   |					  |
|tBodyAccJerkMag-mean        |																	|					   |					  |
|tBodyAccJerkMag-std         |																	|					   |					  |
|tBodyGyroMag-mean           |																	|					   |					  |
|tBodyGyroMag-std            |																	|					   |					  |
|tBodyGyroJerkMag-mean       |																	|					   |					  |
|tBodyGyroJerkMag-std        |																	|					   |					  |
|fBodyAcc-mean-X             |																	|					   |					  |
|fBodyAcc-mean-Y             |																	|					   |					  |
|fBodyAcc-mean-Z             |																	|					   |					  |
|fBodyAcc-std-X              |																	|					   |					  |
|fBodyAcc-std-Y              |																	|					   |					  |
|fBodyAcc-std-Z              |																	|					   |					  |
|fBodyAccJerk-mean-X         |																	|					   |					  |
|fBodyAccJerk-mean-Y         |																	|					   |					  |
|fBodyAccJerk-mean-Z         |																	|					   |					  |
|fBodyAccJerk-std-X          |																	|					   |					  |
|fBodyAccJerk-std-Y          |																	|					   |					  |
|fBodyAccJerk-std-Z          |																	|					   |					  |
|fBodyGyro-mean-X            |																	|					   |					  |
|fBodyGyro-mean-Y            |																	|					   |					  |
|fBodyGyro-mean-Z            |																	|					   |					  |
|fBodyGyro-std-X             |																	|					   |					  |
|fBodyGyro-std-Y             |																	|					   |					  |
|fBodyGyro-std-Z             |																	|					   |					  |
|fBodyAccMag-mean            |																	|					   |					  |
|fBodyAccMag-std             |																	|					   |					  |
|fBodyBodyAccJerkMag-mean    |																	|					   |					  |
|fBodyBodyAccJerkMag-std     |																	|					   |					  |
|fBodyBodyGyroMag-mean       |																	|					   |					  |
|fBodyBodyGyroMag-std        |																	|					   |					  |
|fBodyBodyGyroJerkMag-mean   |																	|					   |					  |
|fBodyBodyGyroJerkMag-std    |																	|					   |					  |
