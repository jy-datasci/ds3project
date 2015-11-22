#Getting and Cleaning Data
##Code Book for the Course Project. November 21, 2015

This codebook is loosely formatted similar to the sample by JorisSchut accessed from the DSS community site linked from the course.

###Project description
Given some sample data, combine the test and training sets.  The data contains 30 subjects, each performing 6 activities, along with variables measuring and calculating various values during each activity.  The result is to create a summary data set of the mean values for the means and standard deviation columns in the original data for each combination of subject and activity.

###Data Processing
The features_info.txt file included with the source data describes the original organization of variables that make up the data, and how they were calculated.  The original variable names are in features.txt.  The descriptions for the files included in the data set is i the README.txt file included with the source data.

The test/subject_test.txt and train/subject_train.txt files are added as a subject column to the test and training data sets, respectively.  The test/y_test.txt and train/y_train.txt files are added as an activity column to the test and training data sets, respectively.

The test and training sets are combined into one data set.

The activity_labels.txt file has a label for each activity number, and the numbers in the activity column are replaced with their corresponding labels during the manipulation of the data.

###Cleaning the data
*The test and training data sets are combined into one data set.
*variables which contain either mean() or std() are separated as the subset of the data.
*Variable names are formatted to make them valid R names, and some  period characters that are included as part of the formatting process are removed.  
##References
[Codebook template](http://datasciencespecialization.github.io/getclean/)
[Getting and Cleaning Data Github site](http://datasciencespecialization.github.io/getclean/) - has a link to the codebook temmplate
