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


| Variable Name				 | Description				    															| Data Type	           | Units		          		|
|----------------------------|------------------------------------------------------------------------------------------|----------------------|----------------------------|
|activity					 |The activity name		    																| Categorical          | "laying", "standing", ...	|
|subject					 |The subject of the experiment																| Ordinal              | [1:30]				  		|
|tBodyAcc-mean-X             |Time domain body acceleration mean on the X axis											| Continuous		   | [-1:1]				  		|
|tBodyAcc-mean-Y             |Time domain body acceleration mean on the Y axis											| Continuous		   | [-1:1]				  		|
|tBodyAcc-mean-Z             |Time domain body acceleration mean on the Z axis											| Continuous		   | [-1:1]				  		|
|tBodyAcc-std-X              |Time domain body acceleration standard deviation on the X axis  							| Continuous		   | [-1:1]				  		|
|tBodyAcc-std-Y              |Time domain body acceleration standard deviation on the Y axis							| Continuous		   | [-1:1]				  		|
|tBodyAcc-std-Z              |Time domain body acceleration standard deviation on the Z axis							| Continuous		   | [-1:1]				  		|
|tGravityAcc-mean-X          |Time domain gravity acceleration mean on the X axis										| Continuous		   | [-1:1]				  		|
|tGravityAcc-mean-Y          |Time domain gravity acceleration mean on the Y axis										| Continuous		   | [-1:1]				  		|
|tGravityAcc-mean-Z          |Time domain gravity acceleration mean on the Z axis										| Continuous		   | [-1:1]				  		|
|tGravityAcc-std-X           |Time domain gravity acceleration standard deviation on the X axis							| Continuous		   | [-1:1]				  		|
|tGravityAcc-std-Y           |Time domain gravity acceleration standard deviation on the Y axis							| Continuous		   | [-1:1]				  		|
|tGravityAcc-std-Z           |Time domain gravity acceleration standard deviation on the Z axis							| Continuous		   | [-1:1]				  		|
|tBodyAccJerk-mean-X         |Time domain body acceleration Jerk signal mean on the X axis								| Continuous		   | [-1:1]				  		|
|tBodyAccJerk-mean-Y         |Time domain body acceleration Jerk signal mean on the Y axis								| Continuous		   | [-1:1]				  		|
|tBodyAccJerk-mean-Z         |Time domain body acceleration Jerk signal mean on the Z axis								| Continuous		   | [-1:1]				  		|
|tBodyAccJerk-std-X          |Time domain body acceleration Jerk signal standard deviation on the X axis				| Continuous		   | [-1:1]				  		|
|tBodyAccJerk-std-Y          |Time domain body acceleration Jerk signal standard deviation on the Y axis				| Continuous		   | [-1:1]				  		|
|tBodyAccJerk-std-Z          |Time domain body acceleration Jerk signal standard deviation on the Z axis				| Continuous		   | [-1:1]				  		|
|tBodyGyro-mean-X            |Time domain body gyroscope signal mean on the X axis										| Continuous		   | [-1:1]				  		|
|tBodyGyro-mean-Y            |Time domain body gyroscope signal mean on the Y axis										| Continuous		   | [-1:1]				  		|
|tBodyGyro-mean-Z            |Time domain body gyroscope signal mean on the Z axis										| Continuous		   | [-1:1]				  		|
|tBodyGyro-std-X             |Time domain body gyroscope signal standard deviation on the X axis						| Continuous		   | [-1:1]				  		|
|tBodyGyro-std-Y             |Time domain body gyroscope signal standard deviation on the Y axis						| Continuous		   | [-1:1]				  		|
|tBodyGyro-std-Z             |Time domain body gyroscope signal standard deviation on the Z axis						| Continuous		   | [-1:1]				  		|
|tBodyGyroJerk-mean-X        |Time domain body gyroscope Jerk signal mean on the X axis									| Continuous		   | [-1:1]				  		|
|tBodyGyroJerk-mean-Y        |Time domain body gyroscope Jerk signal mean on the Y axis									| Continuous		   | [-1:1]				  		|
|tBodyGyroJerk-mean-Z        |Time domain body gyroscope Jerk signal mean on the Z axis									| Continuous		   | [-1:1]				  		|
|tBodyGyroJerk-std-X         |Time domain body gyroscope Jerk signal standard deviation on the X axis					| Continuous		   | [-1:1]				  		|
|tBodyGyroJerk-std-Y         |Time domain body gyroscope Jerk signal standard deviation on the Y axis					| Continuous		   | [-1:1]				  		|
|tBodyGyroJerk-std-Z         |Time domain body gyroscope Jerk signal standard deviation on the Z axis					| Continuous		   | [-1:1]				  		|
|tBodyAccMag-mean            |Time domain body acceleration signal magnitude mean 										| Continuous		   | [-1:1]				  		|
|tBodyAccMag-std             |Time domain body acceleration signal magnitude standard deviation							| Continuous		   | [-1:1]				  		|
|tGravityAccMag-mean         |Time domain gravity acceleration signal magnitude mean									| Continuous		   | [-1:1]				  		|
|tGravityAccMag-std          |Time domain gravity acceleration signal magnitude standard deviation						| Continuous		   | [-1:1]				  		|
|tBodyAccJerkMag-mean        |Time domain body acceleration Jerk signal magnitude mean									| Continuous		   | [-1:1]				  		|
|tBodyAccJerkMag-std         |Time domain body acceleration Jerk signal magnitude standard deviation					| Continuous		   | [-1:1]				  		|
|tBodyGyroMag-mean           |Time domain body gyroscope signal magnitude mean											| Continuous		   | [-1:1]				  		|
|tBodyGyroMag-std            |Time domain body gyroscope signal magnitude standard deviation							| Continuous		   | [-1:1]				  		|
|tBodyGyroJerkMag-mean       |Time domain body gyroscope Jerk signal magnitude mean										| Continuous		   | [-1:1]				  		|
|tBodyGyroJerkMag-std        |Time domain body gyroscope Jerk signal magnitude standard deviation						| Continuous		   | [-1:1]				  		|
|fBodyAcc-mean-X             |Fourier transformation the body acceleration signal mean on the X axis					| Continuous		   | [-1:1]				  		|
|fBodyAcc-mean-Y             |Fourier transformation body acceleration signal mean on the Y axis						| Continuous		   | [-1:1]				  		|
|fBodyAcc-mean-Z             |Fourier transformation body acceleration signal mean on the Z axis						| Continuous		   | [-1:1]				  		|
|fBodyAcc-std-X              |Fourier transformation body acceleration signal standard deviation on the X axis			| Continuous		   | [-1:1]				  		|
|fBodyAcc-std-Y              |Fourier transformation body acceleration signal standard deviation on the Y axis			| Continuous		   | [-1:1]				  		|
|fBodyAcc-std-Z              |Fourier transformation body acceleration signal standard deviation on the Z axis			| Continuous		   | [-1:1]				  		|
|fBodyAccJerk-mean-X         |Fourier transformation body acceleration Jerk signal mean on the X axis					| Continuous		   | [-1:1]				  		|
|fBodyAccJerk-mean-Y         |Fourier transformation body acceleration Jerk signal mean on the Y axis					| Continuous		   | [-1:1]				  		|
|fBodyAccJerk-mean-Z         |Fourier transformation body acceleration Jerk signal mean on the Z axis					| Continuous		   | [-1:1]				  		|
|fBodyAccJerk-std-X          |Fourier transformation body acceleration Jerk signal standard deviation on the X axis		| Continuous		   | [-1:1]				  		|
|fBodyAccJerk-std-Y          |Fourier transformation body acceleration Jerk signal standard deviation on the Y axis		| Continuous		   | [-1:1]				  		|
|fBodyAccJerk-std-Z          |Fourier transformation body acceleration Jerk signal standard deviation on the Z axis		| Continuous		   | [-1:1]				  		|
|fBodyGyro-mean-X            |Fourier transformation body gyroscope signal mean on the X axis							| Continuous		   | [-1:1]				  		|
|fBodyGyro-mean-Y            |Fourier transformation body gyroscope signal mean on the Y axis							| Continuous		   | [-1:1]				  		|
|fBodyGyro-mean-Z            |Fourier transformation body gyroscope signal mean on the Z axis							| Continuous		   | [-1:1]				  		|
|fBodyGyro-std-X             |Fourier transformation body gyroscope signal standard deviation on the X axis				| Continuous		   | [-1:1]				  		|
|fBodyGyro-std-Y             |Fourier transformation body gyroscope signal standard deviation on the Y axis				| Continuous		   | [-1:1]				  		|
|fBodyGyro-std-Z             |Fourier transformation body gyroscope signal standard deviation on the Z axis				| Continuous		   | [-1:1]				  		|
|fBodyAccMag-mean            |Fourier transformation body acceleration signal magnitude mean							| Continuous		   | [-1:1]				  		|
|fBodyAccMag-std             |Fourier transformation body acceleration signal magnitude standard deviation				| Continuous		   | [-1:1]				  		|
|fBodyBodyAccJerkMag-mean    |Fourier transformation body acceleration Jerk signal magnitude mean						| Continuous		   | [-1:1]				  		|
|fBodyBodyAccJerkMag-std     |Fourier transformation body acceleration Jerk signal magnitude standard deviation			| Continuous		   | [-1:1]				  		|
|fBodyBodyGyroMag-mean       |Fourier transformation body gyroscope magnitude signal mean								| Continuous		   | [-1:1]				  		|
|fBodyBodyGyroMag-std        |Fourier transformation body gyroscope magnitude signal standard deviation					| Continuous		   | [-1:1]				  		|
|fBodyBodyGyroJerkMag-mean   |Fourier transformation body gyroscope Jerk signal magnitude mean							| Continuous		   | [-1:1]				  		|
|fBodyBodyGyroJerkMag-std    |Fourier transformation body gyroscope Jerk signal magnitude mean							| Continuous		   | [-1:1]				  		|
