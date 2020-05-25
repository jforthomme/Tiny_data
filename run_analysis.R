run_analysis <- function(){
        ## Step1 - Merging training and test datasets
        testData <- read.table("Data/test/X_test.txt")
        trainData <- read.table("Data/train/X_train.txt")
        mergedData <- rbind(testData,trainData)
        
        testActivityNum <- read.table("Data/test/Y_test.txt")
        trainActivityNum <- read.table("Data/train/Y_train.txt")
        mergedActivityNum <- rbind(testActivityNum, trainActivityNum)
        
        testPersonID <- read.table("Data/test/subject_test.txt")
        trainPersonID <- read.table("Data/train/subject_train.txt")
        mergedPersonID <- rbind(testPersonID,trainPersonID)
        
        ##Step 2 - Selecting columns which includes mean and std measurements
        features <- read.table("Data/features.txt")[2]
        names(mergedData) <- features[ ,1]
        MeanStdData <- mergedData[ grepl("std|mean", names(mergedData), ignore.case = TRUE) ] 
        
        ##Step 3 - Using descriptive activity names to name the activities in the data set
        activityLabels <- read.table("Data/activity_labels.txt")
        names(activityLabels) <- c("ActivityNumber","Activity")
        mergedActivity <- merge(mergedActivityNum, activityLabels, by.x = "V1", by.y = "ActivityNumber")[2]
        
        ##Step 4 - Creating dataset with appropriate names
        completeSet <- cbind(mergedPersonID, mergedActivity, MeanStdData)
<<<<<<< HEAD
        completeSet <- rename(completeSet, c("PersonID" = "V1"))
=======
        completeSet <- rename(completeSet, PersonID = V1)
>>>>>>> 6749b90b693eb114fcc0a264c2a0298c97b1aab4
        
        ##Step 5 - Summarize dataset
        meltSet <- melt(completeSet, 1:2, 3:88)
        groupedSet <- group_by(meltSet, PersonID, Activity, variable)
        summarizedSet <- summarize(groupedSet, mean(value))
}