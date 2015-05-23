# get-and-clean-data
Course Project 2
Requirments:
You should create one R script called run_analysis.R that does the following. 
Merges the training and the test sets to create one data set.
Extracts only the measurements on the mean and standard deviation for each measurement. 
Uses descriptive activity names to name the activities in the data set
Appropriately labels the data set with descriptive variable names. 
From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


Discriptions:
1.download the Dataset into C:/Users/易轩/Desktop/R data script/get and clean data
2.read data table
2.1load the label codes key from activity_labels.txt
2.2load the feature key from features.txt
3.Extracts only the measurements on the mean and standard deviation for each measurement.
4.load the training and test data sets and only retain data columns determined by indices from step #5
5.merge the training and test data sets
6.replace label codes in the dataset with text labels determined by step #3
7.reshape data to use label and subject as identifiers
8.produce a tidy data set with the average of each variable for each activity/subject combination
