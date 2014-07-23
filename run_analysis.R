## Getting & Cleaning Data:  Project 1 script
## scriptname = "run_analysis.R" with out put a "tidy data set" derived from
## the "Human Activity Recognition Using Smartphones Data Set"
## data set citation: 
##	Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. 
## 	Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support 
##	Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). 
##	Vitoria-Gasteiz, Spain. Dec 2012

## general outline of this script:
##	1) read in appropriate dataset components from working directories
##	2) assemble components into complete dataset
##	3) subset dataset into desired components
##	4) summarize dataset as required by project objectives (selected variables, by subject & activity)
##	5) write summary dataset to text file, filename = "GetCleanDataProject.txt"

run_analysis <- function(){
	library(reshape2)
	# features.txt contains complete list of 561 variables or "feature" names
	vnames <- read.table("UCI HAR Dataset/features.txt", stringsAsFactors=FALSE) 
 
	# read X_train dataset for 21 subjects and appropriate subject/activity indices
	traindata <- read.table("UCI HAR Dataset/train/X_train.txt", col.names=vnames$V2)
	trainsubs <- read.table("UCI HAR Dataset/train/subject_train.txt")
	colnames(trainsubs)[1] <- "subjectindex"
	trainacts <- read.table("UCI HAR Dataset/train/y_train.txt")
	colnames(trainacts)[1] <- "activityindex"

	# read X_test dataset for 9 subjects and appropriate subject/activity indices
	testdata <- read.table("UCI HAR Dataset/test/X_test.txt", col.names=vnames$V2)
	testsubs <- read.table("UCI HAR Dataset/test/subject_test.txt")
	colnames(testsubs)[1] <- "subjectindex"
	testacts <- read.table("UCI HAR Dataset/test/y_test.txt")
	colnames(testacts)[1] <- "activityindex"
	
	# generate column index list for subsetting data set from 561 variables to project required variables
	collist <- sort(c(grep("mean", vnames$V2), grep("std", vnames$V2)))
	traindata <- subset(traindata, select=collist)
	testdata <- subset(testdata, select=collist)
	measurevars <- colnames(traindata)

	# assemble train/test datasets with respective subject/activity indices
	traindata <- cbind(trainsubs, trainacts, traindata)
	testdata <- cbind(testsubs, testacts, testdata)
	
	# create complete (train & test subjects) dataset for selected variables
	totaldata <- rbind(traindata, testdata)
	
	# process data as requested: report mean for each variable by activity with subject index retained
	var1 <- vector("numeric", length=6)
	finaldata <- NULL
	totaldatamelt <- melt(totaldata, id=c("subjectindex", "activityindex"), measure.vars=measurevars)
	for (i in 1:30){
		tempdata <- dcast(subset(totaldatamelt, subjectindex==i), activityindex~variable, mean)
		var1 <- var1 + 1
		tempdata <- cbind(var1, tempdata)
		finaldata <- rbind(finaldata, tempdata)
	}
	
	# assign activity label factors to activityindex column
	colnames(finaldata)[1] <- "subjectindex"
	actlabels <- read.table("UCI HAR Dataset/activity_labels.txt")
	finaldata$activityindex <- factor(finaldata$activityindex, levels=actlabels$V1, labels=actlabels$V2)
	
	# rename variable names to tidy data conventions
	citenames <- vnames$V2[collist]
	meanindex <- grep("mean()", citenames, fixed=TRUE)
	stdindex <- grep("std()", citenames, fixed=TRUE)
	meanFreqindex <- grep("meanFreq()", citenames, fixed=TRUE)
	citenames <- tolower(citenames)
	citenames <- sub("tbody", "", citenames, fixed=TRUE)
	citenames <- sub("fbody", "fft", citenames, fixed=TRUE)
	citenames <- sub("body", "", citenames, fixed=TRUE)
	citenames <- sub("acc", "acceleration", citenames, fixed=TRUE)
	citenames <- sub("gyro", "angularacceleration", citenames, fixed=TRUE)
	citenames <- sub("mag", "magnitude", citenames, fixed=TRUE)
	citenames <- sub("tgrav", "grav", citenames, fixed=TRUE)
	for(i in meanindex){
	citenames[i] <- sub("-mean()", "", citenames[i], fixed=TRUE)
	citenames[i] <- paste("mean", citenames[i], sep="")	
	}
	for(i in stdindex){
	citenames[i] <- sub("-std()", "", citenames[i], fixed=TRUE)
	citenames[i] <- paste("stddev", citenames[i], sep="")
	}
	for(i in meanFreqindex){
	citenames[i] <- sub("-meanfreq()", "", citenames[i], fixed=TRUE)
	citenames[i] <- paste("meanfrequency", citenames[i], sep="")
	}
	citenames <- sub("-", "", citenames, fixed=TRUE)
	newnames <- c("subjectindex", "activityindex", citenames)
	colnames(finaldata) <- newnames

	# write table to text file named "GetCleanDataProject.txt" (sep = " ", default settings)
	write.table(finaldata, "GetCleanDataProject.txt")

}