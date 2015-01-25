library(dplyr)

## Step 1:
## Create a data.frame of test measuremnt and improve readability of label by 
## applying the following tranformation:
## ONly select test measuremnt for 'std' - stand deviation and mean (average)
## Remove special character like '()-'
## Fix label errors - 'BodyBody' -> 'Body'
## Create meaning full name by replace 'freq' if the first character is 'f' and 
## 'time' if the foirst caracter is 't'
## replace 'XYZ' if they are the last charter by 'Xaxis', Yaxis' or 'Zaxis'
features_url <- "./features.txt"
features <- read.table(features_url, header = FALSE)
stdMeanRowNo <- grep("std[(]|mean[(]", features[,2])
measurements <- features[stdMeanRowNo,]
measurements[,2] <- gsub("[()]", "", measurements[,2])
measurements[,2] <- gsub("[-]*mean[-]*", "Mean", measurements[,2])
measurements[,2] <- gsub("[-]*std[-]*", "Std", measurements[,2])
measurements[,2] <- gsub("BodyBody", "Body", measurements[,2])
measurements[,2] <- gsub("^f", "freq", measurements[,2])
measurements[,2] <- gsub("^t", "time", measurements[,2])
measurements[,2] <- sub("(X|Y|Z)+$", "_\\1axis", measurements[,2], fixed = FALSE)

## Step 2) 'Read subject which are under training
subjectTrain_url <- "./train/subject_train.txt"
subjectTrain <- read.table(subjectTrain_url, header = FALSE)
colnames(subjectTrain) <- "Subject"

## Step 3) Read 'training' activity
trainActivity_url <- "./train/Y_train.txt"
trainActivity <- read.table(trainActivity_url, header = FALSE)
colnames(trainActivity) <- "Activity"

## Process 'training' measurement,
## Step 4) Read 'training' measurements and only select cols which are part of measurement
##    and label the 'training' measurement.
train_url <- "./train/X_train.txt"
trainDF <- read.table(train_url, header = FALSE)
trainDF <- trainDF[, measurements[,1]]
colnames(trainDF) <- measurements[,2]

## Sep 5) Combine 'Subject', 'trainintActivity' and the tarinDF(measurement)
subjectActivityTrainDF <- cbind(subjectTrain, trainActivity, trainDF)

#-------------------------------------------------------------------------------
## Do similar acivity for 'test' measurement' (steps 2 - 5 listed above)

## Step 2) 'Read subject which are under test
subjectTest_url <- "./test/subject_test.txt"
subjectTest <- read.table(subjectTest_url, header = FALSE)
colnames(subjectTest) <- "Subject"

## Step 3) Read 'test' activity
testActivity_url <- "./test/y_test.txt"
testActivity <- read.table(testActivity_url, header = FALSE)
colnames(testActivity) <- "Activity"

## Step 4) Read 'test' measurements and only select cols which are part of measurement
##    and label the 'test' measurement.
test_url <- "./test/X_test.txt"
testDF <- read.table(test_url, header = FALSE)
testDF <- testDF[, measurements[,1]]
colnames(testDF) <- measurements[,2]

## Step 5) Combine 'Subject', 'testActivity' and the testDF(measurement)
subjectActivityTestDF <- cbind(subjectTest, testActivity, testDF)

## Step 6
## Combine 'training' and 'test' measurement
combinedMeasurements <- rbind(subjectActivityTrainDF, subjectActivityTestDF)


## Step 7
## Create a DF of activity and replace the the second column of the combined test 
## measurement of numerical values with meaningful textual values.
activity <- data.frame(no=c(1:6),
                       activityName = c("Walking", "WalkUpStairs", 
                                "WalkDownStairs", "Sitting", "Standing", "Laying"))
combinedMeasurements[,2] <- activity[combinedMeasurements[,2],2]


## Step 8
## utilize dplyr library to  take the average of each variable for each activity 
## and subject. I could have utilized the following:
## "summaryOfMeasurements = summarise_each(group_by(combinedMeasurements, Subject, Activity), funs(mean))"
# but I chose to do the following since multile operations can be read from 
# left to right rather then understanding the logic from inside to out. 
summaryOfMeasurements <- combinedMeasurements %>% group_by(Subject, Activity) %>% 
                                summarise_each(funs(mean))

## Step 9
# Write the summary of the result 
write.table(summaryOfMeasurements, file = "./summaryofMeasurements.txt", row.names=FALSE)
