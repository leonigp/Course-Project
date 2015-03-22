# Course-Project
Course Project for Coursera's "Getting and Cleaning Data"

The first block (lines 2-9) reads the needed files into R. The read.table() function is used.

The second block (lines 12-14) merges the training and test set for X (measurements) named dataSetX, Y (activities) named dataSetY, and S(Subjects) named dataSetS. The rbind () function is used.

The third block (lines 17-20) chooses the column indices corresponding to mean and standard deviation variable names (grep()), combines (rbind()0) and sorts (sort()) them. The resulting "variableL" is used to subset dataSetX and choose the mean() and std() variables into dataSetSelect

The fourth block (lines 23-27) provides the activity labels (factor()) and merges (cbind()) the activity labels, the subjects (dataSetS) and the data set subset (dataSetSelect). The, it procedes to name the secind column ("subjects") and columns 3:68 using a subset of variableNames, namely variableL.

The fifth block (lines 29-31) uses the melt() and dcast() functions to provide each variable's average for each activity and each subject within that activity. Finally it uses wtie.table() to write the new data set into a file.





