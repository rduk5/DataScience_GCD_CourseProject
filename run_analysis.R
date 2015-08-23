# Loads the reshape library for use later
library(reshape2)

# Provides a list of the filesnames for where the data will be stored, the file to unzip and the
# location of the datafile on the web
filename <- "C:/Users/RDUKTRADING/Documents/R/getdata_dataset.zip"
file <-"getdata_dataset.zip"
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "

# Download the data from the web
download.file(fileURL, filename,mode="wb", method="libcurl")

# Unzip the downloaded file
unzip(file) 

# Extract the activity list from the data to add to the dataframe later on
Activity_Labels_Data <- read.table("UCI HAR Dataset/activity_labels.txt")

# Extract the features list from the data to screen for ones that contain the 'mean' and 'std'
Features_Data <- read.table("UCI HAR Dataset/features.txt")

# Converts the second column into characters to make sure they are in the correct format for use in 'factor()' later
Activity_Labels_Data[,2] <- as.character(Activity_Labels_Data[,2])
Features_Data[,2] <- as.character(Features_Data[,2])

# Uses grep tp find and tag the columns within Features_Data that contain either 'mean' or 'std'
MeanandStdDevColumns <- grep(".*mean.*|.*std.*", Features_Data[,2])

#Uses the MeanandStdDevColumns vector to collect the names of the columns in the original dataset
MeanandStdDevColumns.names <- Features_Data[MeanandStdDevColumns,2]

# Load the underlying training data from the training set and the test set matching the ones with mean and std
TrainingSet_X_Train <- read.table("UCI HAR Dataset/train/X_train.txt")[MeanandStdDevColumns]
TestSet_X_Test <- read.table("UCI HAR Dataset/test/X_test.txt")[MeanandStdDevColumns]

# Load the training labels and test labels from the data sets
TrainingSet_Y_Train <- read.table("UCI HAR Dataset/train/Y_train.txt")
TestSet_Y_Test <- read.table("UCI HAR Dataset/test/Y_test.txt")

# Loading the subject train data identifying the subject who perfomed the activity for each window.
TrainingSet_Subject_Train <- read.table("UCI HAR Dataset/train/subject_train.txt")
TestSet_Subject_Test <- read.table("UCI HAR Dataset/test/subject_test.txt")

# Adds the Training data sets together
TrainingData <- cbind(TrainingSet_Subject_Train, TrainingSet_Y_Train, TrainingSet_X_Train)

# Adds the Test data sets together
TestData <- cbind(TestSet_Subject_Test , TestSet_Y_Test, TestSet_X_Test)

# Merges the training data and the test data together
FinalDataSet <- rbind(TrainingData, TestData)

# Changes the first two columns to the correct names and renames the column heads using the
# previously extracted names vector 'MeanandStdDevColumns.names'
colnames(FinalDataSet) <- c("Subject_Label", "Activity_Label", MeanandStdDevColumns.names)

# Changes the Activity_Label and Subject_Label columns into factors to be used in the 'melt()' and 'dcast()' functions
# Fills in the actual values of the features
FinalDataSet$Activity_Label <- factor(FinalDataSet$Activity_Label, levels = Activity_Labels_Data[,1], labels = Activity_Labels_Data[,2])
FinalDataSet$Subject_Label <- as.factor(FinalDataSet$Subject_Label)

# Uses the melt function to get a unique id-variable combination for each subject and activity they performed
FinalDataSet.finished <- melt(FinalDataSet, id = c("Subject_Label", "Activity_Label"))

# Casts the data into the set to arrive at the final data with the average
FinalDataSet.average <- dcast(FinalDataSet.finished, Subject_Label + Activity_Label ~ variable, mean)

write.table(FinalDataSet.average, "C:/Users/RDUKTRADING/Documents/R/SmartphoneCleanedData.txt", row.names = FALSE, quote = FALSE)
