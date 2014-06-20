rm(list = ls())
setwd("D:/Users/311886/Dropbox/eBooks/Coursera/Cleaning/Project")

# Read the Activity Labels Data Frame from CSV
activity_labels <- read.table("UCI HAR Dataset\\activity_labels.txt", header = FALSE, sep=" ", col.names=c('activity_id', 'activity_name'))

# Read the Features Data Frame from CSV
features <- read.table("UCI HAR Dataset\\features.txt", header = FALSE, sep=" ", col.names=c('feature_id', 'feature_name'))

# Read the Test Data Frames from CSV
X_test <- read.table("UCI HAR Dataset\\test\\X_test.txt", header=FALSE)
y_test <- read.table("UCI HAR Dataset\\test\\y_test.txt", header=FALSE, col.names = c("label"))
subject_test <- read.table("UCI HAR Dataset\\test\\subject_test.txt", header=FALSE, col.names = c('subject_id'))

# Read the Train Data Frames from CSV
X_train <- read.table("UCI HAR Dataset\\train\\X_train.txt", header=FALSE)
y_train <- read.table("UCI HAR Dataset\\train\\y_train.txt", header=FALSE, col.names = c("label"))
subject_train <- read.table("UCI HAR Dataset\\train\\subject_train.txt", header=FALSE, col.names = c('subject_id'))

# Set the column names for both the Test and Train Data Frame from the Features Data Frame
colnames(X_test) <- features$feature_name
colnames(X_train) <- features$feature_name

# Complete the X Data Frames with information from y and subject
testData <- cbind(X_test, y_test, subject_test)
trainData <- cbind(X_train, y_train, subject_train)

# Merge the Train and Test Data Frames into one
allData <- rbind(trainData, testData)

# Find the features that represent mean() and std() measurements
valCols <- colnames(allData)[grepl("mean\\(\\)", colnames(allData)) | grepl("std\\(\\)", colnames(allData))]

# Add the context columns to a new list (label and subject), creating a definition of the relevant columns
relCols <- c(valCols, "label", "subject_id")

# Creates a Tidy Data Data Frame, using only the relevant columns
tidyData <- allData[, relCols]

# Add the Activity name using the activity_label Data Frame, remove the activity_id
tidyData <- merge(x=tidyData, y=activity_labels, by.x="label", by.y = "activity_id")
tidyData$label <- NULL

# Create the final Data Frame, agreggating existing data by Activity and Subject and averaging the value columns
reallyTidyData <- aggregate(tidyData[,valCols], by=list(ActivityName = tidyData$activity_name, SubjectId = tidyData$subject_id), FUN="mean")

