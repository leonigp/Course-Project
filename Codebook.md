#Codebook

##Variables
**activityLabels**
Names for the activities undertaken by the subjects with possible values: walking, walking upstairs, walking downstairs, sitting, standing, laying.

**subjects**
Numbers for the subjects participating in the study.

For each of the following variables, the data set lists the mean for each activity and subject.
*list of variables* (columns 3:98)

tBodyAcc-mean()-X

tBodyAcc-mean()-Y

tBodyAcc-mean()-Z

tBodyAcc-std()-X

tBodyAcc-std()-Y

tBodyAcc-std()-Z

tGravityAcc-mean()-X

tGravityAcc-mean()-Y

tGravityAcc-mean()-Z

tGravityAcc-std()-X

tGravityAcc-std()-Y

tGravityAcc-std()-Z

tBodyAccJerk-mean()-X

tBodyAccJerk-mean()-Y

tBodyAccJerk-mean()-Z

tBodyAccJerk-std()-X

tBodyAccJerk-std()-Y

tBodyAccJerk-std()-Z

tBodyGyro-mean()-X

tBodyGyro-mean()-Y

tBodyGyro-mean()-Z

tBodyGyro-std()-X

tBodyGyro-std()-Y

tBodyGyro-std()-Z

tBodyGyroJerk-mean()-X

tBodyGyroJerk-mean()-Y

tBodyGyroJerk-mean()-Z

tBodyGyroJerk-std()-X

tBodyGyroJerk-std()-Y

tBodyGyroJerk-std()-Z

tBodyAccMag-mean()

tBodyAccMag-std()

tGravityAccMag-mean()

tGravityAccMag-std()

tBodyAccJerkMag-mean()

tBodyAccJerkMag-std()

tBodyGyroMag-mean()

tBodyGyroMag-std()

tBodyGyroJerkMag-mean()

tBodyGyroJerkMag-std()

fBodyAcc-mean()-X

fBodyAcc-mean()-Y

fBodyAcc-mean()-Z

fBodyAcc-std()-X

fBodyAcc-std()-Y

fBodyAcc-std()-Z

fBodyAccJerk-mean()-X

fBodyAccJerk-mean()-Y

fBodyAccJerk-mean()-Z

fBodyAccJerk-std()-X

fBodyAccJerk-std()-Y

fBodyAccJerk-std()-Z

fBodyGyro-mean()-X

fBodyGyro-mean()-Y

fBodyGyro-mean()-Z

fBodyGyro-std()-X

fBodyGyro-std()-Y

fBodyGyro-std()-Z

fBodyAccMag-mean()

fBodyAccMag-std()

fBodyAccJerkMag-mean()

fBodyAccJerkMag-std()

fBodyGyroMag-mean()

fBodyGyroMag-std()

fBodyGyroJerkMag-mean()

fBodyGyroJerkMag-std()

Each of these variables has resulted form the mean (mean()) or the standard deviation (std()) measurement for these variables. The string XYZ marks those features where a different variable is available for each axis (X, Y, or Z). As a result for features ending in -XYZ, there are three variables ending in mean() and three variables ending in std(), in total six. For the rest, there are two variables one ending in mean() and one ending in std().

*list of features*

tBodyAcc-XYZ

tGravityAcc-XYZ

tBodyAccJerk-XYZ

tBodyGyro-XYZ

tBodyGyroJerk-XYZ

tBodyAccMag

tGravityAccMag

tBodyAccJerkMag

tBodyGyroMag

tBodyGyroJerkMag

fBodyAcc-XYZ

fBodyAccJerk-XYZ

fBodyGyro-XYZ

fBodyAccMag

fBodyAccJerkMag

fBodyGyroMag

fBodyGyroJerkMag


##Data
The original Data Set is the one provided through the Coursera course project for "Getting and Cleaning Data" and is published in:

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

##Tranformations
The original Data Set underwent a series of tranformations in order to arrive to a tidy data set.
The corresponding train and test sets were merged.
The mean and standard deviation measurements were extracted for each original measurement. In this case, a choice was made to use not every measurement containing some kind of mean in its name, but those measurements which provided us with both a -mean() and a -std() measurement resurlting in the *list of variables*. Original measurements were taken either with a gyroscope ("Gyro" in variable name) or an accelerometer ("Acc" in variable name).
The activity labels were changed from numbers to descriptive variable names, as explained in the accomanying information of the original data set. I.e.:
1 WALKING

2 WALKING_UPSTAIRS

3 WALKING_DOWNSTAIRS

4 SITTING

5 STANDING

6 LAYING

The variable names provided in the features file, which accompanied the original data set, were used to label the variables, after extracting the -mean() and -std(), since these were the ones interesting us.
The last tranformation created a new data set named "TidyDataSetFinal" with the average of each variable for each activity and each subject. 
