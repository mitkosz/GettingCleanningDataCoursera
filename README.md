# GettingCleanningDataCoursera
course project to prepare tidy dataset

This file explains how the script run_analysis.R  work. The scrip implements all five steps described in the assignment

## Step 1: Merge the training and test sets to create one data set
### File location and loading into R
It is assumed that all the files are in the working directory.   
Three training files and three test files are read into R with read.table()  
### Merging the files
All three training files are clipped together as columns using cbind() in the following order: subject, activity, features.  
All three test files are clipped together as columns using cbind() in the folloing order: subject, activity, features.  
Combined training and test files are clipped together as rows using rbind(). The column names of the combined test files were forced to be identical to the column names of the training files for rbind() to work. This is not a problem at this stage because the order of the column is meaningful not the arbitrary column names generated.  

## Step 2: Extract only the measurements on the mean and standard deviatin for each measurement
### Determine which columns contain mean and std data
Load features.txt file using read.table().  
Columns with names that include "mean()" and "std()" are the ones we want to extract. Total of 79.  
There few more column names that include "Mean" but they are angle measurements between mean vectors, do not represent mean of measurements.  
Use grep() to get the indices of the rows in features that have "mean()" or "std()" strings in their values.   
### Subset the data frame from step 1
Shift the indices values by 2 to take into account that the merged data frame produces in step 1 has two initial columns that are not features.
Subset the data frame from step 1 using shifted indices and including columns 1 and 2. 
dataMeanStd is the data frame that results from this subsetting.

## Step 3: Use descriptive activity names to name the activities in the data set.
I accept the original activity names given from the creators of the original data set to meet the criteria for good descriptive names.  
Load "activity_labels.txt" file using read.table(). Change it from factor to character.  
Make the second column of the dataMeanStd from integer to to factor.  
Set the levels dataMeanStd[,2] to the character vector produced from activity_lables.txt.  

## Step 4: Appropriately labels the data set with descriptive variable names
Variables are results of measurements in time and frequency domain of acceleration and angular velocity in three axises, their magnitude and derivatives. It is not practical to come with few full descriptive worlds. I am going to use the names from "features.txt" and will clean them from spaces and ().  
Load "features.txt" using read.table() into R.  
Assign a subset of the second column (the one that holds the names) using indices determined in step 3 to a variable descriptiveNames.  
Use gsub() to remove brackets () and empty spaces.  
For better readability, capitalize the first letter in "mean" and "std" again using gsub().   
Assign the descriptiveNames to the columns 3 to 81 names.   
Column 1 is named "Subject".  
Colum 2 is named "Activity".  

## Step 5: From the data set in step 4, create second, independent tidy data set with the average of each variable for each activity and each subject.
Use dplyr package: library(dplyr).  
Use piping operator, start with data frame from setp 4, dataMeanStd, group it by Subject and Activity columns and use summarise_each() to find the mean of the rest of the columns for each group.  
The tidy data set, meanBySubjectAndActivity is written into "meanBySubjectAndActivity.txt" file using write.table() with row.names = FALSE.

##Reference
This work uses Human Activity Recognition Using Smartphones Data Set as described in:  
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.







