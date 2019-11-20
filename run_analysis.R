library(dplyr)
library(data.table)

columnNames <- read.table("./UCI HAR Dataset/features.txt")

##Read in test data
testcsv <- read.table('./UCI HAR Dataset/test/X_test.txt')
subjustTest <- read.table('./UCI HAR Dataset/test/subject_test.txt')
yTest <- read.table('./UCI HAR Dataset/test/y_test.txt')


##Set Column names for test data
colnames(testcsv) <- columnNames$V2
testcsv$SubjectID <- subjustTest$V1
testcsv$yID <- yTest$V1


##Read in train data
traincsv <- read.table('./UCI HAR Dataset/train/X_train.txt')
subjustTrain <- read.table('./UCI HAR Dataset/train/subject_train.txt')
yTrain <- read.table('./UCI HAR Dataset/train/y_train.txt')


##Set Column names for train data
colnames(traincsv) <- columnNames$V2
traincsv$SubjectID <- subjustTrain$V1
traincsv$yID <- yTrain$V1

##Merge Data (1)
end <- rbind(testcsv, traincsv)

##Only Means and Standard Dev (2)
MSTD <- end[, grepl("mean|std|yID|SubjectID", names(end))]


##Describe activities (3)
activitesList <- read.table("./UCI HAR Dataset/activity_labels.txt")
MSTD <- merge(MSTD, activitesList, by.x = "yID", by.y = "V1")
MSTD$Activity <- MSTD$V2
MSTD$V2 <- NULL
MSTD$yID <- NULL

##Data set already labelled with names (4)
##Create second tidy set with averages for activity and subject (5) 

output <- MSTD %>%
  group_by(SubjectID, Activity) %>%
  summarise_all(funs(mean))

write.table(output, file = "tidydataset.txt", row.names = FALSE)