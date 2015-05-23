# get-and-clean-data
Course Project 2
# Requirments:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


# Discriptions:
1. download the Dataset into C:/Users/易轩/Desktop/R data script/get and clean data
2. read data table
3. load the label codes key from activity_labels.txt
4. load the feature key from features.txt
5. Extracts only the measurements on the mean and standard deviation for each measurement.
6. load the training and test data sets and only retain data columns determined by indices from step #5
7. merge the training and test data sets
8. replace label codes in the dataset with text labels determined by step #3
9. reshape data to use label and subject as identifiers
10. produce a tidy data set with the average of each variable for each activity/subject combination
