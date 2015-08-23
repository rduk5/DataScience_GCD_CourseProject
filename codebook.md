# CodeBook

#####Identifiers

######Subject_Label - The ID of the test subject
######Activity_Label - The type of activity performed when the corresponding measurements were taken

##### Feature descriptions from the original data set

######The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

######Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

######Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

######These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

######tBodyAcc-XYZ
######tGravityAcc-XYZ
######tBodyAccJerk-XYZ
######tBodyGyro-XYZ
######tBodyGyroJerk-XYZ
######tBodyAccMag
######tGravityAccMag
######tBodyAccJerkMag
######tBodyGyroMag
######tBodyGyroJerkMag
######fBodyAcc-XYZ
######fBodyAccJerk-XYZ
######fBodyGyro-XYZ
######fBodyAccMag
######fBodyAccJerkMag
######fBodyGyroMag
######fBodyGyroJerkMag

####The set of variables that were estimated from these signals are: 

######mean(): Mean value
######std(): Standard deviation
######mad(): Median absolute deviation 
######max(): Largest value in array
######min(): Smallest value in array
######sma(): Signal magnitude area
######energy(): Energy measure. Sum of the squares divided by the number of values. 
######iqr(): Interquartile range 
######entropy(): Signal entropy
######arCoeff(): Autorregresion coefficients with Burg order equal to 4
######correlation(): correlation coefficient between two signals
######maxInds(): index of the frequency component with largest magnitude
######meanFreq(): Weighted average of the frequency components to obtain a mean frequency
######skewness(): skewness of the frequency domain signal 
######kurtosis(): kurtosis of the frequency domain signal 
######bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
######angle(): Angle between to vectors.


##### Columns in the final tidy data set (i.e. values to be used in analysis)

######tBodyAcc-Mean()-X
######tBodyAcc-Mean()-Y
######tBodyAcc-Mean()-Z
######tBodyAcc-Std()-X
######tBodyAcc-Std()-Y
######tBodyAcc-Std()-Z
######tGravityAcc-Mean()-X
######tGravityAcc-Mean()-Y
######tGravityAcc-Mean()-Z
######tGravityAcc-Std()-X
######tGravityAcc-Std()-Y
######tGravityAcc-Std()-Z
######tBodyAccJerk-Mean()X
######tBodyAccJerk-Mean()-Y
######tBodyAccJerk-Mean()Z
######tBodyAccJerk-Std()X
######tBodyAccJerk-Std()-Y
######tBodyAccJerk-Std()-Z
######tBodyGyro-Mean()-X
######tBodyGyro-Mean()-Y
######tBodyGyro-Mean()-Z
######tBodyGyro-Std()-X
######tBodyGyro-Std()-Y
######tBodyGyro-Std()-Z
######tBodyGyroJerk-Mean()-X
######tBodyGyroJerk-Mean()-Y
######tBodyGyroJerk-Mean()-Z
######tBodyGyroJerk-Std()-X
######tBodyGyroJerk-Std()-Y
######tBodyGyroJerk-Std()-Z
######tBodyAccMag-Mean()
######tBodyAccMag-Std()
######tGravityAccMag-Mean()
######tGravityAccMag-Std()
######tBodyAccJerkMag-Mean()
######tBodyAccJerkMag-Std()
######tBodyGyroMag-Mean()
######tBodyGyroMag-Std()
######tBodyGyroJerkMag-Mean()
######tBodyGyroJerkMag-Std()-
######fBodyAcc-Mean()-X
######fBodyAcc-Mean()-Y
######fBodyAcc-Mean()-Z
######fBodyAcc-Std()-X
######fBodyAcc-Std()-Y
######fBodyAcc-Std()-Z
######fBodyAcc-MeanFreq()-X
######fBodyAcc-MeanFreq()-Y
######fBodyAcc-MeanFreq()-Z
######fBodyAccJerk-Mean()-X
######fBodyAccJerk-Mean()-Y
######fBodyAccJerk-Mean()-Z
######fBodyAccJerk-Std()-X
######fBodyAccJerk-Std()-Y
######fBodyAccJerk-Std()-Z
######fBodyAccJerk-MeanFreq()-X
######fBodyAccJerk-MeanFreq()-Y
######fBodyAccJerk-MeanFreq()-Z
######fBodyGyro-Mean()-X
######fBodyGyro-Mean()-Y
######fBodyGyro-Mean()-Z
######fBodyGyro-Std()-X
######fBodyGyro-Std()-Y
######fBodyGyro-Std()-Z
######fBodyGyro-MeanFreq()X
######fBodyGyro-MeanFreq()-Y
######fBodyGyro-MeanFreq()-Z
######fBodyAccMag-Mean()
######fBodyAccMag-Std()
######fBodyAccMag-MeanFreq()
######fBodyBodyAccJerkMag-Mean()
######fBodyBodyAccJerkMag-Std()
######fBodyBodyAccJerkMag-MeanFreq()
######fBodyBodyGyroMag-Mean()
######fBodyBodyGyroMag-Std()
######fBodyBodyGyroMag-MeanFreq()
######fBodyBodyGyroJerkMag-Mean()
######fBodyBodyGyroJerkMag-Std()
######fBodyBodyGyroJerkMag-MeanFreq()

####Activity Labels

######WALKING : This takes the value 1 in the data
######WALKING_UPSTAIRS : This takes the value 2 in the data
######WALKING_DOWNSTAIRS :  This takes the value 3 in the data
######SITTING :  This takes the value 4 in the data
######STANDING : This takes the value 5 in the data
######LAYING : This takes the value 6 in the data
