library(plyr)
library(dplyr)

# If directory with data cannot be found, get file and unzip
if( !file.exists("UCI HAR Dataset") ){
    print("Necessary directory not available")
    print("Getting necessary files")
    fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    download.file(fileURL, "UCI_HAR_Dataset.zip", method="curl")
    unzip("UCI_HAR_Dataset.zip")
    file.remove("UCI_HAR_Dataset.zip")
    rm(fileURL)
}

# Activity names taken from activities.txt
# Use descriptive activity names
activities <- c("Walking", "Walking Up", "Walking Down", 
                "Sitting", "Standing", "Laying")

# Read in features.txt to get variable names
# Used later for selecting mean and std and naming columns
features <- read.table("UCI HAR Dataset/features.txt")

# Get only the measurements on the mean and standard deviation 
# for each measurement
# Only names with mean() and std() selected
vars <- grep('mean\\(\\)|std\\(\\)', features[,2])

# Get results for test data set, name the columns, and select 
# only variables related to mean() and std() using vars above
X_test <- read.table("UCI HAR Dataset/test/X_test.txt", 
                     col.names = features[,2]) %>%
   select(vars)

# Get activities for test data set, name Activity column
y_test <- read.table("UCI HAR Dataset/test/y_test.txt", 
                     col.names = "Activity")

# Get subject number for test data set, name Subject column
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt", 
                           col.names = "Subject")

# Create data for test set binding three data frames above
data_test <- cbind(subject_test, y_test, X_test)

# Get results for training data set, name the columns, and select 
# only variables related to mean() and std() using vars above
X_train <- read.table("UCI HAR Dataset/train/X_train.txt", 
                      col.names = features[,2]) %>%
    select(vars)

# Get activities for training data set, name Activity column
y_train <- read.table("UCI HAR Dataset/train/y_train.txt", 
                      col.names = "Activity")

# Get subject number for training data set, name Subject column
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt", 
                            col.names = "Subject")

# Create data for training set binding three data frames above
data_train <- cbind(subject_train, y_train, X_train)

# Merge testing and training data to create one data set
data <- rbind(data_test,data_train)

# Use activities above to give descriptive activity names
data$Activity <- activities[data$Activity]

# Improve variable names by being more descriptive
# Components of name (1).(2).(3).(4).(5)
# frequency or time domain
# (1) = (frequency|time)
# Body or gravitational motion components
# (2) = (Body|Gravity)
# Accelerometer or gyroscope sensor (jerk)
# (3) = (Accerlation|Acceleration.Jerk|Gyroscope|Gyroscope.Jerk)
# Axial measurement (direction) or total magnitude
# (4) = (X|Y|Z|Magnitue)
# Measurement type: mean or standard deviation
# (5) = (mean|std)
names(data) <- gsub("BodyBody", "Body", names(data))
names(data) <- gsub("(mean|std)..", "\\1", names(data))
names(data) <- gsub("(mean|std).([XYZ])", "\\2.\\1", names(data))
names(data) <- gsub("^t", "time.", names(data))
names(data) <- gsub("^f", "frequency.", names(data))
names(data) <- gsub("(Acc|Gyro|Jerk|Mag)",".\\1", names(data))
names(data) <- gsub("Acc", "Acceleration", names(data))
names(data) <- gsub("Gyro", "Gyroscope", names(data))
names(data) <- gsub("Mag", "Magnitude", names(data))

# Create second, independent tidy data set with average of each
# variable for each activity and each subject
meansByActSub <- data %>% 
    group_by(Activity, Subject) %>% 
    summarise_each(funs(mean))

# Output tidy data set to txt file
write.table(meansByActSub,
            file="ActivitySubjectMeans.txt",
            row.names=FALSE)

# Remove data sets that are no longer needed
rm(data_test, X_test, y_test, subject_test)
rm(data_train, X_train, y_train, subject_train)
rm(features, activities, vars)
