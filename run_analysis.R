#read files into R
dataSetTrainX<-read.table("UCI HAR Dataset/train/X_train.txt")
dataSetTrainY<-read.table("UCI HAR Dataset/train/y_train.txt")
dataSetTrainS<-read.table("UCI HAR Dataset/train/subject_train.txt")
dataSetTestX<-read.table("UCI HAR Dataset/test/X_test.txt")
dataSetTestY<-read.table("UCI HAR Dataset/test/y_test.txt")
dataSetTestS<-read.table("UCI HAR Dataset/test/subject_test.txt")
variableNames<-read.table("UCI HAR Dataset/features.txt")
activityNames<-read.table("UCI HAR Dataset/activity_labels.txt")

#merge the test and train set
dataSetX<-rbind(dataSetTestX, dataSetTrainX)
dataSetY<-rbind(dataSetTestY, dataSetTrainY)
dataSetS<-rbind(dataSetTestS, dataSetTrainS)

#choose mean and std variables
meanVariableNames<-grep("mean()", as.character(variableNames[,2]), fixed=TRUE)
stdVariableNames<-grep("std()", as.character(variableNames[,2]), fixed=TRUE)
variableL<-sort(rbind(meanVariableNames, stdVariableNames))
dataSetSelect<-subset(dataSetX,select=c(variableL))

#introduce descriptive activity labels and variable names
activityLabels<-factor(dataSetY[,1],levels=c(1,2,3,4,5,6),labels=c("WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING"))
variableL<-sort(rbind(meanVariableNames, stdVariableNames))
dataSet<-cbind(activityLabels, dataSetS, dataSetSelect)
colnames(dataSet)[2]<-"subjects"
colnames(dataSet)[3:68]<-paste(variableNames[variableL,2])

#Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
dataSetMelt<-melt(dataSet, id=c("activityLabels", "subjects"),  na.rm=TRUE)
dataSetCast<-dcast(dataSetMelt, activityLabels + subjects ~ variable, mean)
write.table(dataSetCast, file="TidyDataSetFinal", quote=TRUE, sep=" ", row.names=FALSE)
