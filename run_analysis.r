#Load DPLR package
library(plyr)

#Step 1: Merge the training and the test sets to create one data set

#Read Training data
 x_train <- read.table("train/X_train.txt")  
 
 #Read training labels
 y_train <- read.table("train/y_train.txt")
 
 #Read training subjects
 subject_train <- read.table("train/subject_train.txt")

 #Read Test data
 x_test <- read.table("test/X_test.txt")  
 
 #Read Test labels
 y_test <- read.table("test/y_test.txt")
 
 #Read Test subjects
 subject_test <- read.table("test/subject_test.txt")
 
 #Combine test and training data sets
 comb_data <- rbind(x_train, x_test)
 
 #Combine test and training labels
 comb_labels <- rbind(y_train,y_test)
 
 #Combine subject data
 comb_subject <- rbind(subject_train,subject_test)
 
 
 
 #Step 2: Extract only the measurements on the mean and standard deviation for each measurement. 
 #Read the features
 features <- read.table("features.txt")
 
 #Identify features with mean or standard deviation in the title
req_features <- grep("-(mean|std)\\(\\)", features[, 2])
 
 #Get only required columns
 req_data <- comb_data[,req_features]
 
 
 
 #Step 3: Use descriptive activity names to name the activities in the data set
 #Read activity labels
 activity_labels <- read.table("activity_labels.txt")
 
 #Get the correct activity names using the combined label data
 activities <- activity_labels[comb_labels[,1],2]
 
 #Step 4:Appropriately labels the data set with descriptive variable names
 #Add the names to the data
 names(req_data) <- features[req_features,2]
 #Add proper column name to subject data set
 names(comb_subject) <- "Subject"
 
 #Create final dataset
 final_dataset <- cbind(comb_subject,activities,req_data)
 
 #Step 5:From the data set in step 4, create a second, independent tidy data set 
 #with the average of each variable for each activity and each subject.
 tidy_data <- tidy_data <- ddply(final_dataset, .(Subject, activities), function(x) colMeans(x[, 3:68]))
 
 #Create the tidy dataset
 write.table(tidy_data, "tidy_data.txt", row.name=FALSE)
 
 
 
 

 
 
 

 
 
 
 
 
