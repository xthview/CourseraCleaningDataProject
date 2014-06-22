Transformation
-------------

The transformation follows this steps :

* The test data sets (X, Y, subject) are read.
* The train data sets (X, Y, subject) are read.
* Using the features list file, the X datasets (train and test) column names are defined.
* The test data sets are merged together (testData), adding new columns to the X data set, identifying the activity and the subject.
* The train data sets are merged together (trainData), adding new columns to the X data set, identifying the activity and the subject.
* The resulting datasets are merged together (allData) , by rows.
* A new data set (tidyData) is created, keeping one the SubjectId, the ActivityId and the mean() and std() measures.
* The ActivityId is replaces by a more descriptive Activity Name.
* A new data set (reallyTidyData) is created, aggregating the measures by SubjectId, ActivityName, and calculating their average values.

Tidy Data Set
-------------

* ActivityName
* SubjectId 
* tBodyAcc-mean()-X 
* tBodyAcc-mean()-Y 
* tBodyAcc-mean()-Z 
* tBodyAcc-std()-X 
* tBodyAcc-std()-Y 
* tBodyAcc-std()-Z 
* tGravityAcc-mean()-X 
* tGravityAcc-mean()-Y 
* tGravityAcc-mean()-Z 
* tGravityAcc-std()-X 
* tGravityAcc-std()-Y 
* tGravityAcc-std()-Z 
* tBodyAccJerk-mean()-X 
* tBodyAccJerk-mean()-Y 
* tBodyAccJerk-mean()-Z 
* tBodyAccJerk-std()-X 
* tBodyAccJerk-std()-Y 
* tBodyAccJerk-std()-Z 
* tBodyGyro-mean()-X 
* tBodyGyro-mean()-Y 
* tBodyGyro-mean()-Z 
* tBodyGyro-std()-X 
* tBodyGyro-std()-Y 
* tBodyGyro-std()-Z 
* tBodyGyroJerk-mean()-X 
* tBodyGyroJerk-mean()-Y 
* tBodyGyroJerk-mean()-Z 
* tBodyGyroJerk-std()-X 
* tBodyGyroJerk-std()-Y 
* tBodyGyroJerk-std()-Z 
* tBodyAccMag-mean() 
* tBodyAccMag-std() 
* tGravityAccMag-mean() 
* tGravityAccMag-std() 
* tBodyAccJerkMag-mean() 
* tBodyAccJerkMag-std() 
* tBodyGyroMag-mean() 
* tBodyGyroMag-std() 
* tBodyGyroJerkMag-mean() 
* tBodyGyroJerkMag-std() 
* fBodyAcc-mean()-X 
* fBodyAcc-mean()-Y 
* fBodyAcc-mean()-Z 
* fBodyAcc-std()-X 
* fBodyAcc-std()-Y 
* fBodyAcc-std()-Z 
* fBodyAccJerk-mean()-X 
* fBodyAccJerk-mean()-Y 
* fBodyAccJerk-mean()-Z 
* fBodyAccJerk-std()-X 
* fBodyAccJerk-std()-Y 
* fBodyAccJerk-std()-Z 
* fBodyGyro-mean()-X 
* fBodyGyro-mean()-Y 
* fBodyGyro-mean()-Z 
* fBodyGyro-std()-X 
* fBodyGyro-std()-Y 
* fBodyGyro-std()-Z 
* fBodyAccMag-mean() 
* fBodyAccMag-std() 
* fBodyBodyAccJerkMag-mean() 
* fBodyBodyAccJerkMag-std() 
* fBodyBodyGyroMag-mean() 
* fBodyBodyGyroMag-std() 
* fBodyBodyGyroJerkMag-mean() 
* fBodyBodyGyroJerkMag-std()