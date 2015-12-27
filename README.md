Original Data: Human activity recognition using smartphones dataset 1.0

The data contains activity monitoring data on a group of 30 subjects. The data has been divided into train and test. 
Apart from the train and test data, we have activity_labels.txt, features_info.txt and features.txt. 
We start the analysis by loading the files individually in R and study their dimentions. For example, the files x.test and x.train have dimentions of 2947/561 and 7352/561 respectively.  
y.test and y.train contain activity codes in the range of 1 to 6, this maps with the activity_labels.txt files. 
subject_test and subject_train contains the codes for the subjects and is in the range of 1 to 30. 
We study the inertial signal files in both test as well as train. They contain parameters like body_acc_x_test but none of the parameters are about mean or std features, we leave that data aside for the moment. 
Now we start the data cleaning process: 
Change the column names in x.test and x.train to more meaningful parameters by replacing the currents names to names in features.txt. 
We bind y.test with x.test and y.train to x.train using cbind funcion. 
We rename the column name corresponding to the data of y.test and y.train to Activity. 
Now merge the subject_test and subject_train to the earlier files respectively using cbind function. We rename that column as Subject. 
We now have the merged data ready for test and train called testfinal and train final respectively. 
We now merge test final and train final using rbind function to get activitydata with dimention 10299/563 
We order the activity data by Subject to get the data for subjects 1 to 30. 
We now extract only the columns containing the measurements of mean and std and also keep the Subject and Activity columns using grepl command. 
Finally we use aggregate function to find the means of each columns containing mean and std by each subject and each activity. 
The final data contains 180 rows corresponding to 30 subjects and 6 activities for each subjects(30*6) 

