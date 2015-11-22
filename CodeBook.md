#Getting and Cleaning Data
##Code Book for the Course Project. November 22, 2015

This codebook is loosely formatted similar to the sample by JorisSchut 
accessed from the DSS community site linked from the course site.

###Project description
Given some sample data, combine the test and training sets. The data contains 
30 subjects, each performing 6 activities, along with variables measuring and 
calculating various values during each activity. The result is to create a 
summary data set of the mean values for the means and standard deviation 
columns in the original data for each combination of subject and activity.

###Data Processing
The features_info.txt file included with the source data describes the 
original organization of variables that make up the data, and how they were 
calculated. The original variable names are in features.txt. The descriptions 
for the files in the source data set is in the README.txt file included with 
the source data.

The test/subject_test.txt and train/subject_train.txt files are added as a 
subject column to the test and training data sets, respectively. The 
test/y_test.txt and train/y_train.txt files are added as an activity column to 
the test and training data sets, respectively.

The test and training sets are combined into one data set.

The activity_labels.txt file has a label for each activity number, and the 
numbers in the activity column are replaced with their corresponding labels 
during the manipulation of the data.

###Cleaning the data
*The test and training data sets are combined into one data set.
*variables which contain either mean() or std() are separated as the subset
of the data.
*the activity numbers read with the source data are replaced with their
corresponding labels.
*Variable names are formatted to make them valid R names, and some period 
characters that are included as part of the formatting process are removed. 
Some variables have the word "Body" twice in their names. While this is likely 
an error with the original data, I decided to leave these as is to make 
comparison easier with the original column names.
* the data is melted to long format and then cast to wide format, with one row
for each combination of subject and activity in the source data.

The readme.md file contains a more detailed description of the script.

###Variables in the Summarized Data
The table in the analysis.txt file has 180 rows and 68 columns. The activity 
is a string denoting the activity performed, and the subject is a number from 
1 to 30. I did not find any units listed in the information with the original 
data. The rest of the variables are numeric and will have the same units as
the source data. The column names are:

* activity
* subject
* tBodyAcc.mean.X
* tBodyAcc.mean.Y
* tBodyAcc.mean.Z
* tBodyAcc.std.X
* tBodyAcc.std.Y
* tBodyAcc.std.Z
* tGravityAcc.mean.X
* tGravityAcc.mean.Y
* tGravityAcc.mean.Z
* tGravityAcc.std.X
* tGravityAcc.std.Y
* tGravityAcc.std.Z
* tBodyAccJerk.mean.X
* tBodyAccJerk.mean.Y
* tBodyAccJerk.mean.Z
* tBodyAccJerk.std.X
* tBodyAccJerk.std.Y
* tBodyAccJerk.std.Z
* tBodyGyro.mean.X
* tBodyGyro.mean.Y
* tBodyGyro.mean.Z
* tBodyGyro.std.X
* tBodyGyro.std.Y
* tBodyGyro.std.Z
* tBodyGyroJerk.mean.X
* tBodyGyroJerk.mean.Y
* tBodyGyroJerk.mean.Z
* tBodyGyroJerk.std.X
* tBodyGyroJerk.std.Y
* tBodyGyroJerk.std.Z
* tBodyAccMag.mean
* tBodyAccMag.std
* tGravityAccMag.mean
* tGravityAccMag.std
* tBodyAccJerkMag.mean
* tBodyAccJerkMag.std
* tBodyGyroMag.mean
* tBodyGyroMag.std
* tBodyGyroJerkMag.mean
* tBodyGyroJerkMag.std
* fBodyAcc.mean.X
* fBodyAcc.mean.Y
* fBodyAcc.mean.Z
* fBodyAcc.std.X
* fBodyAcc.std.Y
* fBodyAcc.std.Z
* fBodyAccJerk.mean.X
* fBodyAccJerk.mean.Y
* fBodyAccJerk.mean.Z
* fBodyAccJerk.std.X
* fBodyAccJerk.std.Y
* fBodyAccJerk.std.Z
* fBodyGyro.mean.X
* fBodyGyro.mean.Y
* fBodyGyro.mean.Z
* fBodyGyro.std.X
* fBodyGyro.std.Y
* fBodyGyro.std.Z
* fBodyAccMag.mean
* fBodyAccMag.std
* fBodyBodyAccJerkMag.mean
* fBodyBodyAccJerkMag.std
* fBodyBodyGyroMag.mean
* fBodyBodyGyroMag.std
* fBodyBodyGyroJerkMag.mean
* fBodyBodyGyroJerkMag.std

###References
* [Getting and Cleaning Data Github site](http://datasciencespecialization.github.io/getclean/) - has a link to the codebook temmplate
* [JorisSchut. Codebook template](http://datasciencespecialization.github.io/getclean/)