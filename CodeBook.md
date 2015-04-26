#Code book  
##for the meanBySubjectAndActivity data set

The original data set is described here:  
"Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013."  

Group of 30 people performend 6 different activities. Original variables (features) are measurements from accelerometer and gyroscope in tree axes. These signals were in  time domain, applied some signal processing (filters) and  after applying Fast Fourier Transform (FFT) variables in frequency domain were produced. All variables start with 't' for time domain or 'f' for frequency domain.  
The raw signals were: tAcc-XYZ (time domain, acceleration in particular axis) and tGyro-XYZ (time domain signal from gyroscope in three axes).  
The acceleration signals were separated into body and gravity signals, producing variables with names as tBodyAcc-XYZ and tGravityAcc-XYZ.  
Time derivatives of body accelleration and angular velocity: tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ  
Euclidean norm (magnitude) of the 3D-signals: tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag
Fourier counterparts have the same names but the first letter is 'f'.

All varibles were normalized, so they are dimensionless and values are in the interval: [-1, 1]

Only mean and standart deviation summaries of the above signals were retained in derived data set. The derived data set was further summarized by calculating the mean of each variable for each activity and each subject. 


Subject  
1...30  Identifies the subject perform the activity  
  
  
Activity  
1.   WALKING  
2.   WALKING_UPSTAIRS  
3.   WALKING_DOWNSTAIRS  
4.   SITTING  
5.   STANDING  
6.   LAYING  

tBodyAccMeanX  
[-1, 1] the mean of time domain body acceleration in X axis  
  
tBodyAccMeanY  
[-1, 1] the mean of time domain body acceleration in Y axis

tBodyAccMeanZ  
[-1, 1] the mean of time domain body acceleration in Z axis  

tBodyAccStdX  
[-1, 1] the standard deviation of time domain body acceleration in X axis  

tBodyAccStdY  
[-1, 1] the standard deviation of time domain body acceleration in Y axis  

tBodyAccStdZ  
[-1, 1] the standard deviation of time domain body acceleration in Z axis  

tGravityAccMeanX  
[-1, 1] the mean of time domain gravity acceleration in X axis  

tGravityAccMeanY  
[-1, 1] the mean of time domain gravity acceleration in Y axis  

tGravityAccMeanZ  
[-1, 1] the mean of time domain gravity acceleration in Z axis  

tGravityAccStdX  
[-1, 1] the standard deviation of time domain gravity acceleration in X axis  

tGravityAccStdY   
[-1, 1] the standard deviation of time domain gravity acceleration in Y axis  

tGravityAccStdZ  
[-1, 1] the standard deviation of time domain gravity acceleration in Z axis

tBodyAccJerkMeanX  
[-1, 1] the mean of time domain body acceleration derivative in X axis  

tBodyAccJerkMeanY  
[-1, 1] the mean of time domain body acceleration derivative in Y axis   

tBodyAccJerkMeanZ  
[-1, 1] the mean of time domain body acceleration derivative in Z axis  

tBodyAccJerkStdX  
[-1, 1] the standard deviation of time domain body acceleration derivative in X axis  

tBodyAccJerkStdY  
[-1, 1] the standard deviation of time domain body acceleration derivative in Y axis   

tBodyAccJerkStdZ  
[-1, 1] the standard deviation of time domain body acceleration derivative in Z axis  

tBodyGyroMeanX  
[-1, 1] the mean of time domain body angular velocity in X axis   

tBodyGyroMeanY  
[-1, 1] the mean of time domain body angular velocity in Y axis   

tBodyGyroMeanZ  
[-1, 1] the mean of time domain body angular velocity in Z axis  

tBodyGyroStdX  
[-1, 1] the standard deviation of time domain body angular velocity in X axis   

tBodyGyroStdY  
[-1, 1] the standard deviation of time domain body angular velocity in Y axis   

tBodyGyroStdZ   
[-1, 1] the standard deviation of time domain body angular velocity in Z axis   

tBodyGyroJerkMeanX  
[-1, 1] the mean of time domain body angular velocity derivative in X  axis    

tBodyGyroJerkMeanY  
[-1, 1] the mean of time domain body angular velocity derivative in Y  axis  

tBodyGyroJerkMeanZ  
[-1, 1] the mean of time domain body angular velocity derivative in Z  axis  

tBodyGyroJerkStdX  
[-1, 1] the standard deviation of time domain body angular velocity derivative in X  axis  

tBodyGyroJerkStdY  
[-1, 1] the standard deviation of time domain body angular velocity derivative in Y  axis    

tBodyGyroJerkStdZ  
[-1, 1] the standard deviation of time domain body angular velocity derivative in Z  axis   

tBodyAccMagMean  
[-1, 1] the mean of time domain body acceleration magnitude   

tBodyAccMagStd  
[-1, 1] the standard deviation of time domain body acceleration magnitude     

tGravityAccMagMean  
[-1, 1] the mean of time domain gravity acceleration magnitude    

tGravityAccMagStd   
[-1, 1] the standard deviation of time domain gravity acceleration magnitude    

tBodyAccJerkMagMean  
[-1, 1] the mean of time domain body acceleration magnitude derivative   

tBodyAccJerkMagStd   
[-1, 1] the standard deviation of time domain body acceleration magnitude derivative    

tBodyGyroMagMean   
[-1, 1] the mean of time domain body angular velocity magnitude    

tBodyGyroMagStd  
[-1, 1] the mean of time domain body angular velocity magnitude    

tBodyGyroJerkMagMean  
[-1, 1] the mean of time domain body angular velocity magnitude derivative  

tBodyGyroJerkMagStd  
[-1, 1] the standard deviation of time domain body angular velocity magnitude derivative    

fBodyAccMeanX  
[-1, 1] the mean of frequency domain body acceleration in X axis  

fBodyAccMeanY  
[-1, 1] the mean of frequency domain body acceleration in Y axis    

fBodyAccMeanZ  
[-1, 1] the mean of frequency domain body acceleration in Z axis    

fBodyAccStdX  
[-1, 1] the standard deviation of frequency domain body acceleration in X axis    

fBodyAccStdY  
[-1, 1] the standard deviation of frequency domain body acceleration in Y axis   

fBodyAccStdZ  
[-1, 1] the standard deviation of frequency domain body acceleration in Z axis   

fBodyAccMeanFreqX  
[-1, 1] the mean of frequency domain body acceleration  frequency in X axis   

fBodyAccMeanFreqY  
[-1, 1] the mean of frequency domain body acceleration  frequency in Y axis   

fBodyAccMeanFreqZ  
[-1, 1] the mean of frequency domain body acceleration  frequency in Z axis  

fBodyAccJerkMeanX  
[-1, 1] the mean of frequency domain body acceleration  derivative in X axis  

fBodyAccJerkMeanY  
[-1, 1] the mean of frequency domain body acceleration  derivative in Y axis   

fBodyAccJerkMeanZ  
[-1, 1] the mean of frequency domain body acceleration  derivative in Z axis   

fBodyAccJerkStdX  
[-1, 1] the standard deviation of frequency domain body acceleration  derivative in X axis   

fBodyAccJerkStdY  
[-1, 1] the standard deviation of frequency domain body acceleration  derivative in Y axis    

fBodyAccJerkStdZ  
[-1, 1] the standard deviation of frequency domain body acceleration  derivative in Z axis   

fBodyAccJerkMeanFreqX  
[-1, 1] the mean of frequency domain body acceleration  derivative frequency in X axis  

fBodyAccJerkMeanFreqY  
[-1, 1] the mean of frequency domain body acceleration  derivative frequency in Y axis   

fBodyAccJerkMeanFreqZ  
[-1, 1] the mean of frequency domain body acceleration  derivative frequency in Z axis  

fBodyGyroMeanX  
[-1, 1] the mean of frequency domain body angular velocity   in X axis  

fBodyGyroMeanY  
[-1, 1] the mean of frequency domain body angular velocity   in Y axis   

fBodyGyroMeanZ  
[-1, 1] the mean of frequency domain body angular velocity   in Z axis   

fBodyGyroStdX  
[-1, 1] the standard deviation of frequency domain body angular velocity in X axis   

fBodyGyroStdY  
[-1, 1] the standard deviation of frequency domain body angular velocity in Y axis   

fBodyGyroStdZ  
[-1, 1] the standard deviation of frequency domain body angular velocity in Z axis   

fBodyGyroMeanFreqX  
[-1, 1] the mean of frequency domain body angular velocity   frequency in X axis  

fBodyGyroMeanFreqY  
[-1, 1] the mean of frequency domain body angular velocity   frequency in Y axis  

fBodyGyroMeanFreqZ  
[-1, 1] the mean of frequency domain body angular velocity   frequency in Z axis  

fBodyAccMagMean  
[-1, 1] the mean of frequency domain body acceleration magnitude  

fBodyAccMagStd  
[-1, 1] the standard deviation of frequency domain body acceleration magnitude  

fBodyAccMagMeanFreq  
[-1, 1] the mean of frequency domain body acceleration magnitude frequency  

fBodyBodyAccJerkMagMean  
[-1, 1] the mean of frequency domain body acceleration derivative magnitude   

fBodyBodyAccJerkMagStd  
[-1, 1] the standard deviation of frequency domain body acceleration derivative magnitude  

fBodyBodyAccJerkMagMeanFreq  
[-1, 1] the mean of frequency domain body acceleration derivative magnitude frequency  

fBodyBodyGyroMagMean
[-1, 1] the mean of frequency domain body angular velocity magnitude  

fBodyBodyGyroMagStd  
[-1, 1] the standard deviation of frequency domain body angular velocity magnitude  

fBodyBodyGyroMagMeanFreq  
[-1, 1] the mean of frequency domain body angular velocity magnitude frequency  

fBodyBodyGyroJerkMagMean  
[-1, 1] the mean of frequency domain body angular velocity derivative magnitude   

fBodyBodyGyroJerkMagStd  
[-1, 1] the standard deviation of frequency domain body angular velocity magnitude  

fBodyBodyGyroJerkMagMeanFreq  
[-1, 1] the mean of frequency domain body angular velocity derivative  magnitude frequency
