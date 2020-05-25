# Tiny_data
Coursera Tiny Data

## Original dataset

Human Activity Recognition Using Smartphones Dataset
Version 1.0

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universit‡ degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws

## Data modification

the `run_analysis` function is used to perform the following transformations on the original dataset

1. Merging training and test datasets
2. Selecting columns which only includes mean and std measurements
3. Using descriptive activity names to name the activities in the data set
4. Creating dataset with appropriate names
5. Summarize dataset with the average of each variable for each activity and each subject.

## Modified dataset

Here's a list of the variables in the modified dataset:

1. Person ID: Each participant in the study has a number from 1 to 30. There's no distinction between training or testing participants in the modified dataset. 
2. Activity: Possible values (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
3. variable: corresponds to the features described in the original dataset. Only the variables containing the string 'mean' or 'std' have been kept in the modified dataset
4. mean(value): average of the different measurements of the variable 