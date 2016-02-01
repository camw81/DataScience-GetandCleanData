
# Download and unzip the data files
File <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(File, "~/UCI-HAR-dataset.zip")
unzip('~/UCI-HAR-dataset.zip')

# Read in the train and test X data sets
x_train <- read.table("~/UCI HAR dataset/train/X_train.txt")
x_test <- read.table("~/UCI HAR dataset/test/X_test.txt")
head(x_train,2)

# Merge the train and test sets using rbind
x.merged <- rbind(x.train, x.test)

x.merged <- as.data.frame(x.merged)

#Read in the subject train and test sets
subject_train <- read.table("~/UCI HAR dataset/train/subject_train.txt")
subject_test <- read.table("~/UCI HAR dataset/test/subject_test.txt")

# Merge the sets using rbind
subject.merge <- rbind(subject.train, subject.test)


#Read in the Y train and test sets
y.train <- read.table("~/UCI HAR dataset/train/y_train.txt")
y.test <- read.table("~/UCI HAR dataset/test/y_test.txt")



#Merge with rbind
y.merged <- rbind(y_train, y_test)
y.merged <- as.data.frame(y.merged)

#Read the feature set in
features <- read.table("~/UCI HAR dataset/features.txt")


#Find and extract the mean and standard deviation features only

##Retrieve a vector with the indices of feature numbers 
mean_stdev <- grep("mean\\(\\)|std\\(\\)", features[,2])

mean_stdev

##Create a new data set that subsets the x.merged set with the feature list (index numbers) of the stdev and mean information
x_mean_stdev <- x.merged[,mean_stdev]

x_mean_stdev

names(x_mean_stdev)


#Clean up the feature names and the columns for x.merged
names(x_mean_stdev) <- features[mean_stdev, 2]
names(x_mean_stdev) <- tolower(names(x_mean_stdev))
names(x_mean_stdev) <- gsub("\\(\\)","",names(x_mean_stdev))

names(x_mean_stdev)

#Read in and clean up the 'activity_labels'
labels <- read.table("~/UCI HAR dataset/activity_labels.txt")
labels[,2] <- tolower((labels[,2]))
labels


#Apply the 'activity label' to the corresponding label in the y.merged set

colnames(y.merged) <- 'activity'

y.merged[,1] <- labels[y.merged[,1],2]

y.merged


    
#Give descriptive name to the Subject data set column
    
colnames(subject.merge) <- 'subject'

#Merge all the data sets into one

final_data <- cbind(subject.merge, x_mean_stdev, y.merged)

final_data <- data.frame(final_data)


#Create an aggregate data set from the new set with the average values across variables for each activity and subject

library(dplyr)

grouped_data <- group_by(final_data, activity, subject)

final_agg <- summarise_each(grouped_data, funs(mean))


write.table(final_agg, file = "~/tidy_data.txt", row.names = FALSE)


