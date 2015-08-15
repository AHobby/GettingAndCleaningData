---
title: "Getting and Cleaning Data Project CodeBook"
output: html_document
---
This repo, codebook, readMe and script are to meet the requirements of the Coursera Data Specialisation course "Getting and Cleaning data" project. All files are from the source named in the project description:

* https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
* [1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012


### Source Data
Source data may be downloaded from [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).


### Data Set Information
The specific files needed for this script are:

* activity_labels.txt
* features.txt
* subject_test.txt
* subject_train.txt
* x_test.txt
* x_train.txt
* y_test.txt
* y_train.txt


### Variables

A complete list of variables for the source data is found in features.txt. The output file average_data.txt is the average (by activity then by subject) of mean and standard deviation of the variables listed below. XYZ indicates that there is a variable for each of those dimensions.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag