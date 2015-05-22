==================================================================
Getting and Cleaning Data Course Project
==================================================================
Morgan Sell
==================================================================
The purpose of the project is to develop a R script that analyzes/summarizes the Human Activity Recognition (HAR) Using Smartphones Dataset provided by the course.

Per the course's instruction, the script assumes that the necessary txt files are available on the current working directory.
==================================================================
The script includes the following variables
1) subject.test - This data corresponds with the test data. Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
2) subject.train - This data corresponds with the train data. Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
3) activity.labels - A data frame that links a numerical ID with the corresponding activity name.
4) xtest.data - A data frame that lists the results from the test group.
5) ytest.data - A data frame that lists the numerical ID for the activity that was performed by the test subject. This data frame corresponds to the xtest.data. 
6) xtrain.data - A data frame that lists the results from the train group.
7) ytrain.data - A data frame that lists the numerical ID for the activity that was performed by the train subject. This data frame corresponds to the xtrain.data.
7) features.names - Values will are used as the column names. They were provided by the HAR data set. The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.
8) train.data - created by binding subject.train, ytrain.data and xtrain.data.
9) test.data - created by binding subject.test, ytest.data and xtest.data.
10) large.dataset - Complete data of the results. test.data and train.data are binded to create data set.
11) column.titles - Values used for large.dataset column names. It is created by binding the features.names with "Subject" and "Activity".
12) std.columns - Column numbers that refer to the standard deviation.
13) mean.columns - Column numbers that refer to mean calculations.
14) req.columns - A vector that is comprised of the number that correspond to the columns that are required for the final.dataset.
15) final.dataset - A data frame comprised of the data required to complete the final mean summary calculation.
16) summary.data - A data frame that lists the average for each column by "Subject" and "Activity".
