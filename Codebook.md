---
output: html_document
---
#Overview  
The data is derived from "Human Activity Recognition Using Smartphones Dataset"  

### Authors  
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto  

### Address  
Smartlab - Non Linear Complex Systems Laboratory  
DITEN - Università degli Studi di Genova.Via Opera Pia 11A, I-16145, Genoa, Italy  

### Contact  
[activityrecognition@smartlab.ws](activityrecognition@smartlab.ws)  
[www.smartlab.ws](www.smartlab.ws)

#Processing    

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.  

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).   

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag.  

These signals were used to estimate variables of the feature vector for each pattern. '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions: 

* "t" indicates time domain signals  
* "f" indicates frequency domain signals  

Data in the file is build by row-wise merge of train and test datasets. Each dataset was built by column-wise merge of Subject data (from subject\_train.txt or subject\_test.txt correspondingly), Activity data (from Y\_train.txt or Y\_test.txt correspondingly with activity labeles matched to the index from activity\_label.txt in both cases) and Variable data(from X\_train.txt or X\_test.txt correspondingly, only columns with "mean()" and "std()"" were selected and averaged per activity and subject)


#Columns    
###Parameters  
* Subject: subject code from 1 to 30  
* Activity:  
	+ WALKING  
	+ WALKING_UPSTAIRS  
	+ WALKING_DOWNSTAIRS  
	+ SITTING  
	+ STANDING  
	+ LAYING  

###Variables  
* tBodyAcc-XYZ  
* tGravityAcc-XYZ  
* tBodyAccJerk-XYZ  
* tBodyGyro-XYZ  
* tBodyGyroJerk-XYZ  
* tBodyAccMag  
* tGravityAccMag  
* tBodyAccJerkMag  
* tBodyGyroMag  
* tBodyGyroJerkMag  
* fBodyAcc-XYZ  
* fBodyAccJerk-XYZ  
* fBodyGyro-XYZ  
* fBodyAccMag  
* fBodyAccJerkMag  
* fBodyGyroMag  
* fBodyGyroJerkMag  

###Units  
Variables are normalized and bounded within [-1,1]  

###Variable Statistics
Each of measured variables are represented as an activity average per subject of:  

* mean(): Mean value  of a variable
* std(): Standard deviation  of a variable