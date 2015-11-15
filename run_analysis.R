#Getting and Cleaning Data, course 3 in the Data Science specialization, course project
setwd("UCI HAR Dataset")
print(getwd())

# step 1. import and merge data
# import data
test <- read.table("test/x_test.txt",comment.char="")
subTest <- read.table("test/subject_test.txt",comment.char="") #1 column data frame
yTest <- read.table("test/y_test.txt",colClasses="character",comment.char="")
# number of columns in test data before adding subject and activity
nColumns <- dim(test)[2]
test$subject <- subTest[,1] #extract the data as a vector
test$activity <- yTest[,1] #extract the data as a vector
train <- read.table("train/x_train.txt",comment.char="")
yTrain<-read.table("train/y_train.txt",colClasses="character",comment.char="")
subTrain<-read.table("train/subject_train.txt",comment.char="") # one column data frame
train$subject<-subTrain[,1] #extract the data as a vector
train$activity <- yTrain[,1] #extract the data as a vector
activities <- read.table("activity_labels.txt",colClasses="character",
        comment.char="")
#merge data
data <- rbind(test, train)
# step 2. Extract means and standard deviations
features <- read.table("features.txt",colClasses=c("integer","character"),
                comment.char="")
#features[,2] contains the column names.  Ad subject and activity column
#names.
columnNames <- c(features[,2],"subject","activity")
#use grep to find column names which contain mean() or std()
subsetColumns <- grep("mean()|std()",columnNames)
#add the subject and activity columns,which have indexes nColumns+1 and nColumns+2
subsetColumns <- c(subsetColumns, nColumns+1, nColumns+2)
subsetData <- data[,subsetColumns]
#change the numbers in the activity column to their labels
for (i in activities[,1]){
        data$activity[data$activity==i] <- activities[i,2]
}
# make valid r column names
setwd("..")
print(getwd())