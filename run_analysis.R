## Run Analysis

# read variable names from the features.txt file
variable_names <- read.table("data\\features.txt", nrows = 561)

# assign a name to each of the two columns in the train_variables data frame
colnames(variable_names) <- c("id_var", "var_name")

# get train labels from the y_train.txt file
train_labels <- read.table("data\\train\\y_train.txt", nrows = 7352)

# get train data from the X_train.txt file
train_data <- read.table("data\\train\\X_train.txt", nrows = 7352, 
                         col.names = variable_names$var_name)

# get test data from the X_test.txt file
test_data <- read.table("data\\test\\X_test.txt", nrows = 2947, 
                        col.names = variable_names$var_name)