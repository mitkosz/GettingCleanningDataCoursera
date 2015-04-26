#This script performs the following uses the data set described in
#"Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz.
#A Public Domain Dataset for Human Activity Recognition Using Smartphones.
#21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine
#Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013."
#and perfoms the folliwng steps:
#step 1: Merges the training and test sets to create one data set
#step 2: Extracts only the measurements on the mean and standard deviation
#step 3: Use descriptive activity names to name the activities in the data set
#step 4: Appropriately labels the data set with descritptive variable names
#Step 5: From the data set in step 4, creat a second, independent tidy data set with 
#the average of each variable for each activity and each subject.


#step1
train <- read.table("X_train.txt", header = TRUE) #load train data file
trainSubjects <- read.table("subject_train.txt", header = TRUE) #load subjects performing the activitiw
trainActivities <- read.table("y_train.txt", header = TRUE) #load activities
trainData <- cbind(trainSubjects, trainActivities, train) #combine above three data frame as collumns

test <- read.table("X_test.txt", header = TRUE) #load test data file
testSubjects <- read.table("subject_test.txt", header = TRUE) #load subjects
testActivities <- read.table("y_test.txt", header = TRUE) #load activities
testData <- cbind(testSubjects, testActivities, test) #combine them as columns

colnames(testData) <- colnames(trainData) #make the column names the same for both data frames
data <- rbind(trainData, testData) #combine them as rows.


#step2: Extracts only the measurements on the mean and standard deviation for each measurement
features <- read.table("features.txt", colClasses = "character") #load features.txt into R
indicies <- grep("mean|std", features$V2) #find out the indicies of the elements that have "mean" and "std" 
indiciesShift <- indicies + 2  #shift the indicies by 2, column 1 and 2 were introduced, they are not features
dataMeanStd <- data[, c(1,2,indiciesShift)] #subset to have data frame only with mean and std


#step3: Use descriptive activity names to name the activities in the data set
activity <- read.table("activity_labels.txt") #read activity labels
activity$V2 <- as.character(activity$V2) #turn it from factor to character
dataMeanStd[,2] <- as.factor(dataMeanStd[,2]) #cast the activity column into factor
levels(dataMeanStd[,2]) <- activity$V2 #set the factor levels


#Step 4: Appropriately labels the data set with descritptive variable names
descriptiveNames <- features$V2[indicies] #subset the features with the names to use
descriptiveNames <- gsub("\\(\\)", "", descriptiveNames) #remove brackets
descriptiveNames <- gsub("-", "", descriptiveNames) #remove spaces
descriptiveNames <- gsub("mean", "Mean", descriptiveNames) #capitalize first letter of mean
descriptiveNames <- gsub("std", "Std", descriptiveNames) #capitalize first letter of std
names(dataMeanStd)[3:81] <- descriptiveNames #set the names of the columns 3 to 81
names(dataMeanStd)[1] <- "Subject" #set the name of the first column
names(dataMeanStd)[2] <- "Activity" # set the name of the second column

dataMeanStd <- dataMeanStd[order(dataMeanStd$Subject),] #order the frame by Subject column


#Step 5: From the data set in step 4, creat a second, independent tidy data set with 
#the average of each variable for each activity and each subject.
library(dplyr) #load dplyr package
meanBySubjectAndActivity <- dataMeanStd %>% group_by(Subject, Activity) %>% summarise_each(funs(mean))

write.table(meanBySubjectAndActivity, file = "meanBySubjectAndActivity.txt", row.names = FALSE)



