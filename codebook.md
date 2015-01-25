### This document is the codebook for getting and cleaning data.
#### Code book contains 68 columms for standard deviation and mean measurement

```
Subject:
	       Type: integer
	Description: 30 subject whcih are number 1 thru 30.

Activity:
	       Type: Factor
	Description: Activity performed by subject which are "Walking", "WalkUpStairs",
	             "WalkSownStairs", "sitting", "Standing" and "Laying"

NOTE:				 
------------------------------------------------------------------------------------
All datatypes below are the average of each varibale for each 
activity and each subject.
------------------------------------------------------------------------------------

timeBodyAccMean_Xaxis:
timeBodyAccMean_Yaxis:
timeBodyAccMean_Zaxis:
	       Type: numeric
	Description: Average reading of the Body 'time domain signal' accelerometer
				  average reading about X-axis, Y-axis and Z-axis.

timeBodyAccStd_Xaxis:
timeBodyAccStd_Yaxis:
timeBodyAccStd_Zaxis:
	       Type: numeric
	Description: Average reading of the Body 'time domain signal' accelerometer 
				 standard deviation reading about X-axis, Y-axis and Z-axis.

timeGravityAccMean_Xaxis:
timeGravityAccMean_Yaxis:
timeGravityAccMean_Zaxis:
	       Type: numeric
	Description: Average reading of the Body 'time domain signal' acceleromoter 
				 standard deviation reading about X-axis, Y-axis and Z-axis.

timeGravityAccStd_Xaxis:
timeGravityAccStd_Yaxis:
timeGravityAccStd_Zaxis:
	       Type: numeric
	Description: Average reading of the Body 'time domain signal' of gravity accelerometer 
				 standard deviation reading about X-axis, Y-axis and Z-axis.

timeBodyAccJerkMean_Xaxis:
timeBodyAccJerkMean_Yaxis:
timeBodyAccJerkMean_Zaxis:
	       Type: numeric
	Description: Average reading of the Body 'time domain signal' accelerometer 
				 jerk average reading about X-axis, Y-axis and Z-axis.

timeBodyAccJerkStd_Xaxis:
timeBodyAccJerkStd_Yaxis:
timeBodyAccJerkStd_Zaxis:
	       Type: numeric
	Description: Average reading of the Body 'time domain signal' accelerometer 
				 jerk standard deviation reading about X-axis, Y-axis and Z-axis.

timeBodyGyroMean_Xaxis:
timeBodyGyroMean_Yaxis:
timeBodyGyroMean_Zaxis:
	       Type: numeric
	Description: Average reading of the Body 'time domain signal' of gyroscope  
				 average reading about X-axis, Y-axis and Z-axis.

timeBodyGyroStd_Xaxis:
timeBodyGyroStd_Yaxis:
timeBodyGyroStd_Zaxis:
	       Type: numeric
	Description: Average reading of the Body 'time domain signal' of gyroscope  
				 standard deviation reading about X-axis, Y-axis and Z-axis.

timeBodyGyroJerkMean_Xaxis:
timeBodyGyroJerkMean_Yaxis:
timeBodyGyroJerkMean_Zaxis:
	       Type: numeric
	Description: Average reading of the Body 'time domain signal' of gyroscope  
				 jerk average reading about X-axis, Y-axis and Z-axis.

timeBodyGyroJerkStd_Xaxis:
timeBodyGyroJerkStd_Yaxis:
timeBodyGyroJerkStd_Zaxis:
	       Type: numeric
	Description: Average reading of the Body 'time domain signal' of gyroscope  
				 jerk standard deviation reading about X-axis, Y-axis and Z-axis.
				 
timeBodyAccMagMean:
		   Type: numeric
	Description: Average reading of the Body 'time domain signal' of accelerometer  
				 magnitude average.

timeBodyAccMagStd:
		   Type: numeric
	Description: Average reading of the Body 'time domain signal' of accelerometer  
				 magnitude standard deviation.

timeGravityAccMagMean:
		   Type: numeric
	Description: Average reading of the Body 'time domain signal' of gravity accelerometer  
				 magnitude average.
				 
timeGravityAccMagStd:
		   Type: numeric
	Description: Average reading of the Body 'time domain signal' of gravity accelerometer  
				 magnitude standard deviation.
				 
timeBodyAccJerkMagMean:
		   Type: numeric
	Description: Average reading of the Body 'time domain signal' of  accelerometer jerk
				 magnitude mean.

timeBodyAccJerkMagStd:
	       Type: numeric
	Description: Average reading of the Body 'time domain signal' of  accelerometer jerk
				 magnitude standard deviation.
				 
timeBodyGyroMagMean:
	       Type: numeric
	Description: Average reading of the Body 'time domain signal' of gyroscope
				 magnitude average.
				 
timeBodyGyroMagStd:
	       Type: numeric
	Description: Average reading of the Body 'time domain signal' of gyroscope
				 magnitude standard deviation.
				 
timeBodyGyroJerkMagMean:
	       Type: numeric
	Description: Average reading of the Body 'time domain signal' of gyroscope jerk
				 magnitude mean.
				 
timeBodyGyroJerkMagStd:
	       Type: numeric
	Description: Average reading of the Body 'time domain signal' of gyroscope jerk
				 magnitude standard deviation.

freqBodyAccMean_Xaxis:
freqBodyAccMean_Yaxis:
freqBodyAccMean_Zaxis:
	       Type: numeric
	Description: Average reading of the Body frequency of accelerometer average 
				 about X-axis, Y-axis and Z-axis.
				 
freqBodyAccStd_Xaxis:
freqBodyAccStd_Yaxis:
freqBodyAccStd_Zaxis:
	       Type: numeric
	Description: Average reading of the Body frequency of accelerometer 
				 standard deviation about X-axis, Y-axis and Z-axis.

freqBodyAccJerkMean_Xaxis:
freqBodyAccJerkMean_Yaxis:
freqBodyAccJerkMean_Zaxis:
	       Type: numeric
	Description: Average reading of the Body frequency of accelerometer 
				 jerk average about X-axis, Y-axis and Z-axis.

freqBodyAccJerkStd_Xaxis:
freqBodyAccJerkStd_Yaxis:
freqBodyAccJerkStd_Zaxis:
	       Type: numeric
	Description: Average reading of the Body frequency of accelerometer 
				 jerk standard deviation about X-axis, Y-axis and Z-axis.

freqBodyGyroMean_Xaxis:
freqBodyGyroMean_Yaxis:
freqBodyGyroMean_Zaxis:
	       Type: numeric
	Description: Average reading of the Body frequency of gyrometer average
				 about X-axis, Y-axis and Z-axis.

freqBodyGyroStd_Xaxis:
freqBodyGyroStd_Yaxis:
freqBodyGyroStd_Zaxis:
	       Type: numeric
	Description: Average reading of the Body frequency of gyrometer
				 standard deviation about X-axis, Y-axis and Z-axis.

freqBodyAccMagMean:
	       Type: numeric
	Description: Average reading of the Body frequency of accelerometer
				 standard deviation about X-axis, Y-axis and Z-axis.

freqBodyAccMagStd:
	       Type: numeric
	Description: Average reading of the Body frequency of accelerometer
				 standard deviation about X-axis, Y-axis and Z-axis.

freqBodyAccJerkMagMean:
	       Type: numeric
	Description: Average reading of the Body frequency of accelerometer jerl 
				 magniture average.
				 
freqBodyAccJerkMagStd:
	       Type: numeric
	Description: Average reading of the Body frequency of accelerometer jerl 
				 magniture standard deviation.
				 
freqBodyGyroMagMean:
	       Type: numeric
	Description: Average reading of the Body frequency of gyroscope magniture 
			     average.
				 
freqBodyGyroMagStd:
	       Type: numeric
	Description: Average reading of the Body frequency of gyroscope magniture 
			     standard deviation.
				 
freqBodyGyroJerkMagMean:
	       Type: numeric
	Description: Average reading of the Body frequency of gyroscope jerk 
				 magniture mean.
				 
freqBodyGyroJerkMagStd:
	       Type: numeric
	Description: Average reading of the Body frequency of gyroscope jerk 
				 magniture standard deviation.
```
