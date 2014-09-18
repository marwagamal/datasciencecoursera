# # read feature names
trainnames <- read.table("dataset/features.txt")

# merge data
data <- rbind2(read.table("dataset/train/X_train.txt", col.names = trainnames[,2]),
               read.table("dataset/test/X_test.txt", col.names = trainnames[,2]))

#extract mean and SD for each measurement 
data <- data[,c(grep("mean()",trainnames[,2]), grep("std()",trainnames[,2]))]

# Uses descriptive activity names to name the activities in the data set
data <- cbind2(data,
               rbind2(read.table("dataset/train/subject_train.txt", col.names = "subject"),
                     read.table("dataset/test/subject_test.txt", col.names = "subject")))

data <- cbind(data,
              rbind2(read.table("dataset/train/y_train.txt", col.names = "activity"),
                     read.table("dataset/test/y_test.txt", col.names = "activity")))

data$activity[data$activity == 1] <- "WALKING"
data$activity[data$activity == 2] <- "WALKING_UPSTAIRS"
data$activity[data$activity == 3] <- "WALKING_DOWNSTAIRS"
data$activity[data$activity == 4] <- "SITTING"
data$activity[data$activity == 5] <- "STANDING"
data$activity[data$activity == 6] <- "LAYING"

#Appropriately labels the data set with descriptive variable names.

#creates a second, independent tidy data set with the average
# of each variable for each activity and each subject.

tidydata <- aggregate(data, by= list(subject = data$subject,activity = data$activity), mean )
# remove duplicate activity, subject columns 
tidydata[,82] = NULL
tidydata[,82] = NULL
# write the tidy data file
write.table(tidydata, "tidydata.txt", sep=",",row.name=FALSE)


