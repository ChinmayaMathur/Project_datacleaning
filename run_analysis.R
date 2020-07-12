#Part1 (Merge the dataset)
X_train <- read.table("X_train.txt")
y_train <- read.table("y_train.txt")
subject1 <- read.table("subject_train.txt")


X_test <- read.table("X_test.txt")
y_test <- read.table("y_test.txt")
subject2<- read.table("subject_test.txt")

features <- read.table("features.txt")


combine1 <- cbind(X_train,y_train)
combine2 <- cbind(X_test,y_test)
combine3 <- cbind(combine1,subject1)
combine4 <- cbind(combine2,subject2)
combine_X <- rbind(combine3,combine4)



#Part2 (extract the mean and standard deviation columns)
dataset <- combine_X[c(1:6,41:46,81:86,121:126,161:166,201,202,214,215,227,228,240,241,253,254,
                      266:271,345:350,424:429,503,504,516,517,529,530,542,543,562,563)]



#Part3 (change the activity names from numeric to text)
activity_lable <- read.table("activity_labels.txt")
dataset <- merge(dataset, activity_lable, by.x = "activity", by.y = "V1")
dataset$activity<- NULL
dataset <- select(dataset, subject, everything())
dataset <- select(dataset, V2, everything())


#Part4 (name all the vairables)
colnames(dataset) = c("activity","subject","tBodyAcc-mean()-X","tBodyAcc-mean()-Y","tBodyAcc-mean()-Z","tBodyAcc-std()-X",
                     "tBodyAcc-std()-Y","tBodyAcc-std()-Z","tGravityAcc-mean()-X","tGravityAcc-mean()-Y",
                     "tGravityAcc-mean()-Z","tGravityAcc-std()-X","tGravityAcc-std()-Y","tGravityAcc-std()-Z",
                     "tBodyAccJerk-mean()-X","tBodyAccJerk-mean()-Y","tBodyAccJerk-mean()-Z","tBodyAccJerk-std()-X",
                     "tBodyAccJerk-std()-Y","tBodyAccJerk-std()-Z","tBodyGyro-mean()-X","tBodyGyro-mean()-Y",
                     "tBodyGyro-mean()-Z","tBodyGyro-std()-X","tBodyGyro-std()-Y","tBodyGyro-std()-Z",
                     "tBodyGyroJerk-mean()-X","tBodyGyroJerk-mean()-Y","tBodyGyroJerk-mean()-Z","tBodyGyroJerk-std()-X",
                     "tBodyGyroJerk-std()-Y","tBodyGyroJerk-std()-Z","tBodyAccMag-mean()","tBodyAccMag-std()",
                     "tGravityAccMag-mean()","tGravityAccMag-std()","tBodyAccJerkMag-mean()","tBodyAccJerkMag-std()",
                     "tBodyGyroMag-mean()","tBodyGyroMag-std()","tBodyGyroJerkMag-mean()","tBodyGyroJerkMag-std()",
                     "fBodyAcc-mean()-X","fBodyAcc-mean()-Y","fBodyAcc-mean()-Z","fBodyAcc-std()-X","fBodyAcc-std()-Y",
                     "fBodyAcc-std()-Z","fBodyAccJerk-mean()-X","fBodyAccJerk-mean()-Y","fBodyAccJerk-mean()-Z",
                     "fBodyAccJerk-std()-X","fBodyAccJerk-std()-Y","fBodyAccJerk-std()-Z","fBodyGyro-mean()-X",
                     "fBodyGyro-mean()-Y","fBodyGyro-mean()-Z","fBodyGyro-std()-X","fBodyGyro-std()-Y",
                     "fBodyGyro-std()-Z","fBodyAccMag-mean()","fBodyAccMag-std()","fBodyBodyAccJerkMag-mean()",
                     "fBodyBodyAccJerkMag-std()","fBodyBodyGyroMag-mean()","fBodyBodyGyroMag-std()",
                     "fBodyBodyGyroJerkMag-mean()","fBodyBodyGyroJerkMag-std()")



#Part5 (create a new dataset with average of all variables for each subject and activity)
data <- group_by(dataset, subject, activity) 
dataset2 <- summarise_each(data,mean)

write.table(dataset2,"data.txt",row.names = FALSE)
data1<- read.table("data.txt")
View(data1)