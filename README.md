Introduction
-------------
In this repository you will find a script (run_analysis.R) that takes test and train from the "Human Activity Recognition Using Smartphones Data Set" and
performs a set of transformation to generate a tidy data set that focus on the mean and std measurements.

How to Use
-------------
The script (run_analysis.R) assumes that the dataset is available in the same folder as the script, inside a "UCI HAR Dataset" folder. The directory structure should be :

```
[D] Base Project Directory
	[F] run_analysis.R					=> Data processing script, generator of the tidy data set
	[D] UCI HAR Dataset					=> Folder containing the UCI HAR Dataset
		[F] activity_labels.txt			=> Data file linking the activity id's with the activity name's
		[F] features.txt				=> Data file with a complete list of the features measured by the experiment
		[F] features_info.txt			=> Help file describing the measurements
		[D] test						=> test data folder
			[F] X_test.txt				=> Test Data file (measures)
			[F] y_test.txt				=> Test Data file (activities)
			[F] subject_test.txt		=> Test Data file (subjects)
		[D] train						=> train data folder
			[F] X_train.txt				=> Train Data file (measures)
			[F] y_train.txt				=> Train Data file (activities)
			[F] subject_train.txt		=> Train Data file (subjects)
```
		
Running the contents of the run_analysis.R file 

```
source("run_analysis.R")
```

will produce a tidy.data.txt output file. Read the CodeBook.md for more details on this process.