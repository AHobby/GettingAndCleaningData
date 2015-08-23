# NOTE that this script assumes the starting files are all in the same directory
# and that you have set this as your working directory


# STAGE 1 
# read in the data, do some very basic data checking,
# and then bind the files to create the data sets

# read the files in
x_train <- read.table("./X_train.txt")
y_train <- read.table("./y_train.txt")

x_test <- read.table("./X_test.txt")
y_test <- read.table("./y_test.txt")

subject_train <- read.table("./subject_train.txt")
subject_test <- read.table("./subject_test.txt")


# merge the file to create single data sets
x_data <- rbind(x_train, x_test)
y_data <- rbind(y_train, y_test)
subject_data <- rbind(subject_train, subject_test)

#read in features 
features <- read.table("features.txt")

# put the column names into the data tables
colnames(x_data) <- features[,2]
colnames(y_data) <- "test_label"
colnames(subject_data) <- "subject_label"

#then column bind it all into a single dataframe
all_data <- cbind(subject_data, y_data, x_data)


## STAGE 2
## extract the measurements with mean and standard deviation for each measurement
#extract the colnames as our new set of labels where we want to test for mean or std in the text
colnames(all_data)
data_columns <- colnames(all_data)

mean_std_cols <- grep("-(mean|std)\\(\\)", data_columns)
mean_std_cols

all_data_mean_std <- data.frame(all_data$subject_label, all_data$test_label,all_data[,mean_std_cols])


#STAGE 3
# now replace the values in the column test_label, with the activity names
activity_type <- read.table("./activity_labels.txt")
activity_type
colnames(all_data_mean_std)
all_data_activity <- merge(activity_type, all_data_mean_std, by.x = "V1", by.y = "all_data.test_label", all.x = TRUE)


# STAGE 4
# relabel the first three columns withe meaningful names
colnames(all_data_activity) [1] <- "ActivityCode"
colnames(all_data_activity) [2] <- "Activity"
colnames(all_data_activity) [3] <- "Subject"



# STAGE 5
# calculate the column means to create a new, tidy data set
# then write that file back to the working directory as a txt file
col_avg <- ddply(all_data_activity, .(Activity,Subject), function(x) colMeans(x[,4:69]))



write.table(col_avg, "average_data.txt", row.name = FALSE)

