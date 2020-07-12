#Part1
X_train <- read.table("X_train.txt")
y_train <- read.table("y_train.txt")

X_test <- read.table("X_test.txt")
y_test <- read.table("y_test.txt")

subject1 <- read.table("subject_train.txt")
subject2<- read.table("subject_test.txt")

features <- read.table("features.txt")

combine1 <- cbind(X_train,y_train)
combine2 <- cbind(X_test,y_test)
combine3 <- cbind(combine1,subject1)
combine4 <- cbind(combine2,subject2)
combine5 <- rbind(X_test,X_train)
combine_X <- rbind(combine3,combine4)



#Part2
dataset <- combine_X[c(1:6,41:46,81:86,121:126,161:166,201,202,214,215,227,228,240,241,253,254,
                      266:271,345:350,424:429,503,504,516,517,529,530,542,543,555:561,562,563)]



#Part3
say <- function(x) {
  for (i in 1:6) {
  if(dataset$activity==1) {"1"="WALKING"}
  if(dataset$activity==2) {"2"="WALKING_UPSTAIRS"}
  if(dataset$activity==3) {"3"="WALKING_DOWNSTAIRS"}
  if(dataset$activity==4) {"4"="SITTING"}
  if(dataset$activity==5) {"5"="STANDING"}
  else {"6"="LAYING"}}}

 
dataset <- mutate(dataset, activity = "WALKING")



#Part4
colnames(dataset) = c("tBodyAcc-mean()-X","tBodyAcc-mean()-Y","tBodyAcc-mean()-Z","tBodyAcc-std()-X",
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
                     "fBodyBodyGyroJerkMag-mean()","fBodyBodyGyroJerkMag-std()","angle(tBodyAccMean,gravity)",
                     "angle(tBodyAccJerkMean),gravityMean","angle(tBodyGyroMean,gravityMean)",
                     "angle(tBodyGyroJerkMean,gravityMean)","angle(X,gravityMean)","angle(Y,gravityMean)",
                     "angle(Z,gravityMean)","activity","subject")



#Part5



write.table(dataset,"dataset.txt",row.names = FALSE)
data<- read.table("dataset.txt")
View(data)