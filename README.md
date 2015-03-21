# Getting and Cleaning Data Course Project (getdata-012)

The script run_analysis.R assumes that the zipped data for the project [1], obtained from the "Human Activity Recognition Using Smartphones Data Set" [2], is unzipped into the directory "UCI HAR Dataset" in the current working directory. If that is not the case, then the script will download the zip file again (using method="curl"), unzip it, and then remove the .zip file. There are no parameters to this script.

Starting from the project data, the run_analysis.R script does the following:
1. Reads the testing and training sets into data.frames.
2. Selects only measurements on the mean and standard deviation for each measurement. The set of variables estimated from the signals corresponding to mean value and standard deviation were selected as containing "mean()" or "std()", respectively, as specified in features.txt.
3. Merges the testing and training sets, along with the subject identifier and activity for each measurement, to create one data set.
4. Changes the activity names, indexed with values ranging from 1 to 6, to more descriptive labels. 
5. Changes the variable names to have more descriptive and understandable labels.
6. Generates an independent tidy data set with the average of each variable for each activity.

The output data set is tidy [3], because
* each measured variable is in its own column with a descriptive label
* each different observation of that variable is in a different row (there are no duplicate columns)
* each type of observational unit forms a table (not multiple tables for this assignment).

There are no parameters to this script, but the script assumes that plyr and dplyr packages are not installed. If this is not true, you can run:
install.packages("plyr")
install.packages("dplyr")

Run script by sourcing it from working directory:
source("run_analysis.R")

The output is written to ActivitySubjectMeans.txt. It can be read into R with:
read.table("ActivitySubjectMeans.txt", header=TRUE)

[1]
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

[2]
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

[3] Sec 2.3
http://www.jstatsoft.org/v59/i10/paper
