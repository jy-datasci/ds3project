#Getting and Cleaning Data
##Course Project
###Overview
This project has these files:
* README.md: describes the script and how to run it
* run_analysis.R: the R script that processes the data.  Output is written to
analysis.txt
* CodeBook.md: an overall description of the script's actions, and a listing 
of the variables in the resulting data set.

###Running the project
The run_analysis.R script contains the steps to import and process the data 
files. The files need to be in the current directory with the same folder 
structure as the archive provided with the project, in a subfolder called 
"UCI HAR Dataset", as is included in the zip archive. The output table is 
written to a file named analysis.txt in the same directory as the script.

###description of the script
The project first reads the test data, test subjects, and test activities into 
separate variables. The activities (read into the yTest variable) are read as 
characters, since this data will eventually be replaced by the activity 
labels. The number of original columns in the test data is stored, so that it 
can be used to calculate the column index of the subject and activity columns, 
which are added later to the right side of the data frame. The subject and 
activity data is then added to the test set. 

The training data is read in the same way. The training subject and activity 
data is added to its data frame. 

The activity numbers are read in as characters, so they can be matched with 
the activity values read in with the test and training data.

The test and training data is then merged. Column names are added from 
features.txt. The make.names function is used to form valid names in R. 

Column names with mean() or std() are determined from the column names 
originally read from features.txt. These column indexes are used to form the 
subset of data to be analyzed. I opted not to include the columns with 
meanFreq(). I found this Stack Overflow page helpful in escaping the 
parentheses. Specificly, two backslashes are needed to escape a parenthesis. 
[R grep pattern regex with 
brackets](http://stackoverflow.com/questions/7992436/r-grep-pattern-regex-with-brackets). 

The subject and activity columns are added to the subset of columns. 

Activity numbers are replaced with their labels using subsetting. This is 
briefly mentioned in David Hood's post [GETTING AND CLEANING 
THE ASSIGNMENT](https://thoughtfulbloke.wordpress.com/2015/09/09/getting-and- 
cleaning-the-assignment/) 

Using the make.names function resulted in some variable names with multiple 
periods in them. These are removed, and periods at the end of variable names 
are stripped off. Some variables have the word "Body" twice in their names. 
While this is likely an error with the original data, I decided to leave these 
as is to make comparison easier with the original column names. 

The data is then melted to long format, and cast to wide format. I found this 
post helpful in understanding melt and cast concepts: [An Introduction to 
reshape2](http://seananderson.ca/2013/10/19/reshape.html) 

References linked in this readme refer to content as available on November 21, 
2015.