The data for the project is downloaded from the following link:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
Unzip the data and ‘cd’ to ‘UCI HAR Dataset’ directory. The ‘R’ script should be located in this directory. 

All the steps which is described below is numbered in the ‘run_analyis.R’ script. Please refer to the ‘R’ code to follow how the script works.


Steps:
1)	Read the column names, select measurements which is required for analysis and provide better descriptive names for the column names.
	a.	Create a vector of integer to filter out ‘std’ and ‘mean’ which is required for analysis.
	b.	Create a data.frame – ‘measurement’ of labels which contains ‘std’ and ‘means’ by using the vector from the above step (this will give 66 columns of measurement)
	c.	Create descriptive names by:
		i.	removing ‘()-‘ characters.
		ii.	Fix error in label by removing by fixing ‘BodyBody’ -> ‘Body’
		iii.	Replace ‘f’ and ‘t’ if they are first character with ‘freq’ abnd ‘time’.
		iv.	Replace ‘XYX’ character if they are the last character with ‘Xaxis’, ‘Yaxis’ ansd ‘Zaxis’ for better readability of column names.
		
2)	Read the subject data and label the columns.

3)	Read the activity and label the columns appropriately.

4)	Read the measurement, for training and test, and filter out the measurement which are required for analysis and label the columns from ‘step-1’ above.

5)	Create a data.frame by combining the subject , activity and measurement (step 2 and 3 above) via column combine function.

6)	Follow steps 2-5 for training and test measurement and combine the data.frame via row combine function.

7)	Create an activity data.frame frame and replace the second  column with descriptive names. I could have used the data provided in 'data_activity.txt' but chose to provide better activity names.

8)	Create a summary with the average of activity and subject for the data fame, by using ‘dplyr’ from step 5 and save to a file.
	Note: They were two method of creating summary from left to right and inside out. I chose to create the summary by left to right logic.
	
9)	Write the ‘summaryOfMeasurement’ to a file.
