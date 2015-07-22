## Run Analysis

# The R file used to run all the analysis and deliver a tidy dataset.
# All files donwloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
# are in a folder called data.

# Operations made by this script:

## 1. Merge the training and the test sets to create one data set.

# Data:
# Get train data from the X_train.txt file.
train_data <- read.table("data/train/X_train.txt", nrows = 7352)

# Get test data from the X_test.txt file.
test_data <- read.table("data/test/X_test.txt", nrows = 2947)

# Merge the training and the test sets to create one data set.
data <- rbind(train_data, test_data)

# Labels:
# Get train labels from the y_train.txt file.
train_labels <- read.table("data/train/y_train.txt", nrows = 7352)

# Get test labels from the y_test.txt file.
test_labels <- read.table("data/test/y_test.txt", nrows = 2947)

# Merge the training and test labels.
labels <- rbind(train_labels, test_labels)

# Subjects:
# Get train subjects from the subject_train.txt file.
train_subjects <- read.table("data/train/subject_train.txt", nrows = 7352)        

# Get test subjects from the subject_test.txt file.
test_subjects <- read.table("data/test/subject_test.txt", nrows = 2947)        

# Merge the training and test subjects.
subjects <- rbind(train_subjects, test_subjects)


## 2. Extract only the measurements on the mean and standard deviation for each measurement.

# Read variable names from the features.txt file.
feature_names <- read.table("data/features.txt", nrows = 561)

# Assign a name to each of the two columns in the train_variables data frame.
colnames(feature_names) <- c("id_feat", "feat_name")

# Searches inside the var_name variable to find the words "mean()" and "std()". 
pattern <- c('.*?mean().*?', '.*?std().*?')
matches <- unique( grep( paste(pattern, collapse = "|"), 
                         feature_names$feat_name, perl = T))

# Gets only the measurements on the mean and standard deviation for each
# measurement.
data_mean_std <- data[, matches]

## 3. Uses descriptive activity names to name the activities in the data set
# Read the activity labels.
activity_labels <- read.table("data/activity_labels.txt", nrows = 6)

# Assign a name to each of the two columns in the activity_labels data frame.
names(activity_labels) <- c("id_activity", "activity_name")

# Replace the _ with a space and transform to lower case the activity labels.  
activity_labels$activity_name <- gsub("_", " ", 
                                      tolower( activity_labels$activity_name ))

# Assign the activity name to each element in labels data frame.
labels[, 1] <- activity_labels[labels[, 1], "activity_name"]

# Rename the column of the labels data frame to "activity".
names(labels) <- "activity"

## 4. Appropriately labels the data set with descriptive variable names. 
# Rename the column of the subjects data frame to "subject".
names(subjects) <- "subject"

variable_names <- read.table("")