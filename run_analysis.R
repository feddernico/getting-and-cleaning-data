## Run Analysis
# The R file used to run all the analysis and deliver a tidy dataset.
# All files donwloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
# are in a folder called data.

# Read variable names from the features.txt file.
variable_names <- read.table("data\\features.txt", nrows = 561)

# Assign a name to each of the two columns in the train_variables data frame.
colnames(variable_names) <- c("id_var", "var_name")

# searches inside the 
pattern <- c('.*?mean().*?', '.*?std().*?')

matches <- unique( grep( paste(pattern, collapse = "|"), 
                         variable_names$var_name, perl = T))

# Get train labels from the y_train.txt file.
train_labels <- read.table("data\\train\\y_train.txt", nrows = 7352)

# Get train data from the X_train.txt file.
train_data <- read.table("data\\train\\X_train.txt", nrows = 7352)

# Get test data from the X_test.txt file.
test_data <- read.table("data\\test\\X_test.txt", nrows = 2947)

# Merges the training and the test sets to create one data set.
data <- rbind.data.frame(train_data, test_data)

names(data)