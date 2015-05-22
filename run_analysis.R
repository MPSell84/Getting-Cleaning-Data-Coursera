# Install required packages.
install.packages("Hmisc")
library(Hmisc)
install.packages("plyr")
library(plyr)
install.packages("dplyr")
library(dplyr)

# Read data from txt files.
subject.test <- read.table("subject_test.txt")
subject.train <- read.table("subject_train.txt")
activity.labels <- read.table("activity_labels.txt")
xtest.data <- read.table("X_test.txt")
ytest.data <- read.table("y_test.txt")
xtrain.data <- read.table("X_train.txt")
ytrain.data <- read.table("y_train.txt")
features.names <- read.table("features.txt")

# Bind text & train data w/ corresponding activities into one data set.
train.data <- cbind(subject.train,ytrain.data, xtrain.data)
test.data <- cbind(subject.test,ytest.data, xtest.data)
large.dataset <- rbind(train.data, test.data) 

# Label the columns of final.dataset.
column.titles <- rbind(data.frame(V1 = -1, V2 = "Subject"), 
                       data.frame(V1 = 0, V2 = "Activity"), features.names)
colnames(large.dataset) <- column.titles[,2]

# Identify the relevant columns.
mean.columns <- grep("mean", names(large.dataset))
std.columns <- grep("std", names(large.dataset))
req.columns <- c(1,2,mean.columns, std.columns)

# Create final dataset.
final.dataset <- large.dataset[,req.columns]


# Change the "Activity" column from an integer to a qualitative description.
final.dataset[,2] <- factor(final.dataset[,2], labels = activity.labels[,2])

summary.data <- ddply(final.dataset, .(Subject, Activity), colwise(mean))
