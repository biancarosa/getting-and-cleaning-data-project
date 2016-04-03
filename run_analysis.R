library(data.table)
library(dplyr)

# Setup variables. Change the working dir to match your user if you need to run the script.
setwd("/home/bianca/R/getting-and-cleaning-data-project/data")
destfile <- "data.zip"
folder <- "UCI HAR Dataset"

# Downloading required files if they do not exist
if (!file.exists(destfile)){
  print("Downloading file")
  fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(fileURL, destfile, method="curl")
}  
# Unzipping required files if the folder does not exist
if (!file.exists(folder)) { 
  print("Unzipping file")
  unzip(destfile);
}
print("Files are ready")

# Merges the training and the test sets to create one data set.

testSubjects <- fread("UCI HAR Dataset/test/subject_test.txt")
testSet <- fread("UCI HAR Dataset/test/X_test.txt")
testLabels <- fread("UCI HAR Dataset/test/y_test.txt")
test <- cbind(testSubjects, testLabels, testSet)

trainSubjects <- read.table("UCI HAR Dataset/train/subject_train.txt")
trainSet <- read.table("UCI HAR Dataset/train/X_train.txt")
trainLabels <- read.table("UCI HAR Dataset/train/y_train.txt")
train <- cbind(trainSubjects, trainLabels, trainSet)

all <- tbl_df(rbind(test, train))

features <- fread("UCI HAR Dataset/features.txt", col.names = c("num", "name"))

# Set column names
colnames(all) <- c("subject", "activity", features$name)

print("Files are merged")

# Extracts only the measurements on the mean and standard deviation for each measurement.
meanOrStd <- grep("-mean\\(\\)|-std\\(\\)", features$name, value = TRUE)
selectedColumns <- c("subject", "activity", meanOrStd)
all <- all[,selectedColumns]

# Uses descriptive activity names to name the activities in the data set
activities <- fread("UCI HAR Dataset/activity_labels.txt", col.names = c("num", "label"))
all$activity <- factor(all$activity, levels = activities$num, labels = activities$label)
all$subject <- as.factor(all$subject)

# Appropriately labels the data set with descriptive variable names.
names(all) <- gsub("^t", "Time", names(all))
names(all) <- gsub("^f", "Frequency", names(all))
names(all) <- gsub("-mean\\(\\)", "Mean", names(all))
names(all) <- gsub("-std\\(\\)", "StandardDeviation", names(all))
names(all) <- gsub("Acc", "Accelerometer", names(all))
names(all) <- gsub("Gyro", "Gyroscope", names(all))
names(all) <- gsub("Mag", "Magnitude", names(all))
names(all) <- gsub("BodyBody", "Body", names(all))

# From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
tidy <- aggregate(. ~ subject + activity, all, mean)
write.table(tidy, file = "tidy.txt", row.names = FALSE, quote = FALSE)
print("Tidy data set generated")

