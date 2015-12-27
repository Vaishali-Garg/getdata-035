Human Activity Recognition Using Smartphones Dataset

The document contains data of 30 subjects who performed six activities namely WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.

The original data was divided into two groups - test and train. The final tidy dataset has the rows from test and train data merged to show the complete data for all 30 subjects.

The subjects were analysed over 550+ parameters but we are interesed in only the parameters that reflect either the mean or the standard deviation of the given parameter.
This data has only those columns which show the mean or the std of a given parameter. 

The 30 volunteers are under the column header "Subject" and the activities like walking, sitting are reflected under the column header "Activity".

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 

These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz.

tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ denote body linear acceleration and angular velocity jerk signals respectively.

tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag denote the magnitude of these three-dimensional signals.

The 'f' in some parameters like fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag indicate frequency domain signals. 

'-XYZ' denotes 3-axial signals in the X, Y and Z directions.

The set of variables that we are using in this tidy dataset are: 

mean(): Mean value
std(): Standard deviation
