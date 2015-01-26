
1) x_train dataframe that contains the training data
2) y_train dataframe that contains labels of the activities used in training
3) subject_train dataframe that contains the number indicating subject in training

4) x_test dataframe that contains the test data
5) y_test dataframe that contains labels of the activities used in test
6) subject_test dataframe that contains the number indicating subject in test

7)comb_data dataframe contains training and test data 
 
8)comb_labels dataframe contains training and test lables
 
9) comb_subject contains subjects from training and testing
 
10)features contains features used in the experiment
 
11) req_features contains only those features that has either mean or std as part of its name
 
12)req_data contains only the data related features identified in req_features
 
13)activity_labels contains the names of the activities used in the experiment
 
14)activities dataframe contains the labels associated with comb_labels dataframe. This step is used to get descrptive activity names
 
15) Combine comb_subject,activities,req_data dataframes using columb bind (cbind) function to get complete dataset

16) Create a new dataset called tidy_data that has the average of each variable for each activity and each subject.
 
17) Create tidy_data.txt from the tidy_data dataframe
 

 
 
 
 

 
 
 

 
 
 
 
 
