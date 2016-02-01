##Codebook

##Descriptions from UCI

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 


For purposes of this analysis, we took only those variables from the original set estimated from mean and standard deviation, as seen below:



# Variables for analysis set


| Variable | Description
-----------|-------------
| activities | The activity performed
| subject | Subject ID
| tbodyacc-mean-x,y,z | Mean time for acceleration of body for X,Y,Z direction
| tbodyacc-std-x,y,z | Standard deviation of time for acceleration of body for X,Y,Z direction
| tgravityacc-mean-x,y,z | Mean time of acceleration of gravity for X direction
| tgravityacc-std-x,y,z | Standard deviation of time of acceleration of gravity for X,Y,Z direction
| tbodyaccjerk-mean-x,y,z | Mean time of body acceleration jerk for X,Y,Z direction
| tbodyaccjerk-std-x,y,z | Standard deviation of time of body acceleration jerk for X,Y,Z direction
| tbodygyro-mean-x,y,z | Mean body gyroscope measurement for X,Y,Z direction
| tbodygyro-std-x,y,z | Standard deviation of body gyroscope measurement for X,Y,Z direction
| tbodygyrojerk-mean-x,y,z | Mean jerk signal of body for X,Y,Z direction
| tbodygyrojerk-std-x,y,z | Standard deviation of jerk signal of body for X,Y,Z directio
| tbodyaccmag-mean | Mean magnitude of body Acc
| tbodyaccmag-std | Standard deviation of magnitude of body Acc
| tgravityaccmag-mean | Mean gravity acceleration magnitude
| tgravityaccmag-std | Standard deviation of gravity acceleration magnitude
| tbodyaccjerkmag-mean | Mean magnitude of body acceleration jerk
| tbodyaccjerkmag-std | Standard deviation of magnitude of body acceleration jerk
| tbodygyromag-mean | Mean magnitude of body gyroscope measurement
| tbodygyromag-std | Standard deviation of magnitude of body gyroscope measurement
| tbodygyrojerkmag-mean | Mean magnitude of body body gyroscope jerk measurement
| tbodygyrojerkmag-std | Standard deviation of magnitude of body body gyroscope jerk measurement
| fbodyacc-mean-x,y,z | Mean frequency of body acceleration for X,Y,Z direction
| fbodyacc-std-x,y,z | Standard deviation of frequency of body acceleration for X,Y,Z direction
| fbodyaccjerk-mean-x,y,z | Mean frequency of body accerlation jerk for X,Y,Z direction
| fbodyaccjerk-std-x,y,z | Standard deviation frequency of body accerlation jerk for X,Y,Z direction
| fbodygyro-mean-x,y,z | Mean frequency of body gyroscope measurement for X,Y,Z directio
| fbodygyro-std-x,y,z | Standard deviation frequency of body gyroscope measurement for X,Y,Z direction
| fbodyaccmag-mean | Mean frequency of body acceleration magnitude
| fbodyaccmag-std | Standard deviation of frequency of body acceleration magnitude
| fbodybodyaccjerkmag-mean | Mean frequency of body acceleration jerk magnitude
| fbodybodyaccjerkmag-std | Standard deviation of frequency of body acceleration jerk magnitude
| fbodybodygyromag-mean | Mean frequency of magnitude of body gyroscope measurement
| fbodybodygyromag-std | Standard deviation of frequency of magnitude of body gyroscope measurement
| fbodybodygyrojerkmag-mean | Mean frequency of magnitude of body gyroscope jerk measurement
| fbodybodygyrojerkmag-std | Standard deviation frequency of magnitude of body gyroscope jerk measurement
