---
title: "README.md"
output: html_document
---

This repo, codebook, readMe and script are to meet the requirements of the Coursera Data Specialisation course "Getting and Cleaning data" project. All files are from the source named in the project description:

* https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
* [1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012



### Assumptions and package loading requirements
Assumptions:

* The required files have been downloaded 
* Files have been unzipped 
* The required working files have been placed into the same directory
* That directory has been set as the working directory


Packages to load:

* plyr


### Script Overview
The script run_analysis.txt does the following things:

1. Reads the files in then bind them together to create a single file
2. Extracts the columns that are a mean or a standard deviation
3. Names all of the columns
4. Make sure the activities are a the text description rather than a code
5. Calculate the mean of every data column (by activity and by subject) and write that table out as "average_data.txt"


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