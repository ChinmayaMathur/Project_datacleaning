# Project_datacleaning

Chinmaya Mathur
==================================================================

The objective of this project is to create a tidy dataset from a messy data given to us. We first inports a file which includes the data for a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. We first merge the data set for both train and test and creat a new data set. In that dataset we subset it so that only the mean and standard deviation of each variable exists and we remane the variables according to how they are mentioned in features file. We also change the feature column in the dataset from its numeric representation to text reperesentation i.e. 1 = Walking, 2 = Walking upstairs, etc. From this tidy data set we create another dataset in which we select the average for all the vaiables according to each activity and subject. There exists a codebook for this dataset that describes the variables in detail.

The dataset includes the following files:
=========================================
 the data set has following Varaibles:
 - tBodyAcc-XYZ
 - tGravityAcc-XYZ
 - tBodyAccJerk-XYZ
 - tBodyGyro-XYZ
 - tBodyGyroJerk-XYZ
 - tBodyAccMag
 - tGravityAccMag
 - tBodyAccJerkMag
 - tBodyGyroMag
 - tBodyGyroJerkMag
 - fBodyAcc-XYZ
 - fBodyAccJerk-XYZ
 - fBodyGyro-XYZ
 - fBodyAccMag
 - fBodyAccJerkMag
 - fBodyGyroMag
 - fBodyGyroJerkMag
 
 for each of these variables we have only selected the mean and standard deviation for the values.
 
 The resulting data set fulfills the requirement for this project.
