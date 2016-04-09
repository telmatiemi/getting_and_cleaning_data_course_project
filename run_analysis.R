# Defining directories variables

destfile_sub_test <- "C:/Users/Telma/Documents/Data_Science_Coursera/Data_Cleaning/Course_Project/UCI_HAR_Dataset/test/subject_test.txt"
destfile_x_test <- "C:/Users/Telma/Documents/Data_Science_Coursera/Data_Cleaning/Course_Project/UCI_HAR_Dataset/test/X_test.txt"
destfile_y_test <- "C:/Users/Telma/Documents/Data_Science_Coursera/Data_Cleaning/Course_Project/UCI_HAR_Dataset/test/y_test.txt"
destfile_activity_labels <- "C:/Users/Telma/Documents/Data_Science_Coursera/Data_Cleaning/Course_Project/UCI_HAR_Dataset/activity_labels.txt"
destfile_features <- "C:/Users/Telma/Documents/Data_Science_Coursera/Data_Cleaning/Course_Project/UCI_HAR_Dataset/features.txt"

destfile_sub_train <- "C:/Users/Telma/Documents/Data_Science_Coursera/Data_Cleaning/Course_Project/UCI_HAR_Dataset/train/subject_train.txt"
destfile_x_train <- "C:/Users/Telma/Documents/Data_Science_Coursera/Data_Cleaning/Course_Project/UCI_HAR_Dataset/train/X_train.txt"
destfile_y_train <- "C:/Users/Telma/Documents/Data_Science_Coursera/Data_Cleaning/Course_Project/UCI_HAR_Dataset/train/y_train.txt"


# Reading files from directories
sub_test <- read.table(destfile_sub_test)
y_test <- read.table(destfile_y_test)
x_test <- read.table(destfile_x_test)
activity_labels <- read.table(destfile_activity_labels)
features <- read.table(destfile_features)

sub_train <- read.table(destfile_sub_train)
y_train <- read.table(destfile_y_train)
x_train <- read.table(destfile_x_train)

# Renaming columns
names(sub_test)[1] <- "subject"
names(y_test)[1] <- "activity"
names(x_test) <- features[,2]

names(sub_train)[1] <- "subject"
names(y_train)[1] <- "activity"
names(x_train) <- features[,2]

# Obtaining activity description
y_test$activity_description <- activity_labels[y_test$activity,2]
y_train$activity_description <- activity_labels[y_train$activity,2]


# Extracting mean and standard deviation columns from x_test and x_train
x_test_mean_std <- x_test[, grep("-mean|-std", names(x_test))]
x_train_mean_std <- x_train[, grep("-mean|-std", names(x_train))]


# Binding columns in order to generate a single data frame for test and another for train
test <- data.frame(cbind(y_test$activity_description, sub_test, x_test_mean_std))

train <- data.frame(cbind(y_train$activity_description, sub_train, x_train_mean_std))

names(test)[1] <- "activity_description"

names(train)[1] <- "activity_description"

# Binding rows of test and train data frames in other to obtain a single data frame containing test and train data.
test_train <- data.frame(rbind(test, train))

# Calculating average

activity <- test_train[,1]

subject <- test_train[,2]

test_train_avg <- aggregate(test_train[,3:81], by = list(activity, subject), FUN = mean)

names(test_train_avg)[1] <- "activity_description"
names(test_train_avg)[2] <- "subject"

# Generating data set .txt file with the average of each variable for each activity and each subject.
write.table(test_train_avg, file = "Week4_Assignment.txt", append = FALSE, sep = ";", row.names = FALSE)


