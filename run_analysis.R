setwd("C:/Users/взаљ/Desktop/R data script/get and clean data")
library(reshape2)
##read data table
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")[,2]
features <- read.table("./UCI HAR Dataset/features.txt")[,2]
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
## Extract only the measurements on the mean and standard deviation for each measurement.
extract <- grepl("mean|std", features)
##Uses descriptive activity names to name the activities in the data set
names(X_test) <- features
X_test <- X_test[,extract]
y_test[,2] <- activity_labels[y_test[,1]]
names(y_test) <- c("Activity_ID", "Activity_Label")
names(subject_test) <- "subject"
names(X_train) <- features
X_train <- X_train[,extract]
y_train[,2] <- activity_labels[y_train[,1]]
names(y_train) <- c("Activity_ID", "Activity_Label")
names(subject_train) <- "subject"
## merge datasets
test_data <- cbind(as.data.table(subject_test), y_test, X_test)
train_data <- cbind(as.data.table(subject_train), y_train, X_train)
whole_data <- rbind(test_data, train_data)
##Appropriately labels the data set with descriptive variable names
id_labels  <- c("subject", "Activity_ID", "Activity_Label")
data_labels <- setdiff(colnames(data), id_labels)
##reshape the array
melt_data  <- melt(whole_data, id = id_labels, measure.vars = data_labels)
##creates a second, independent tidy data set with the average of each variable for each activity and each subject
tidy <- dcast(melt_data, subject + Activity_Label ~ variable, mean)
##save data
write.table(tidy, file = "./tidy.txt", row.name=FALSE)
