CodeBook
===================
The repository contains data analysis files used to produce a tidy dataset. the analysis should explore the Human Activity Recognition Using Smartphones Data Set and walk through som main steps, such as :

1- Merges the training and the test sets to create one data set.
2- Extracts only the measurements on the mean and standard deviation for each measurement. 
3- Uses descriptive activity names to name the activities in the data set
4- Appropriately labels the data set with descriptive variable names. 
5- From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

For each record in the dataset it is provided: 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.
-------------------

The analysis contains these variables 
. trainnames >  column names which describe various features in the dataset
. data > merged data of train and test observations 
. tidydata > the output tidy dataset 

###Analysis Steps
1- read feature names
2- merge data and label the data set with descriptive variable names
3- extract mean and SD for each measurement 
4- Uses descriptive activity names to name the activities in the data set
5- create tidy dataset with the average of each variable for each activity and each subject.
6- remove duplicate activity, subject columns
7- write the tidy dataset to txt file
