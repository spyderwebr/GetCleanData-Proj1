Introduction:

This is the codebook for the "GetCleanDataProject.txt" dataset produced by R script "run_analysis.R" The "GetCleanDataProject.txt" dataset was produced by processing the "Human Activity Recognition Using Smartphones Data Set", citation: 
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012.

The "GetCleanDataProject.txt" dataset was produced from the original dataset by following these steps:
* reading in the appropriate dataset components from a working directory containing the cited dataset;
* subsetting the main datasets (test and training) from 561 variables to a subset of 79 variables, the means and standard deviations of key variables;
* assembling the components into complete dataset that includes subjects and activities index (2 additional variables);
* processing the dataset to provide the mean for each variable across activities and subjects; and,
* writing the processed dataset to a text file "GetCleanDataProject.txt".

Variables: (there are 81 variables, appended x, y, z indicate coordinate directions, while magnitude indicates the direction independent magnitude)


subjectindex
code for subject monitored for data
range 1 to 30
	test subject indices: 2,4,9,10,12,13,18,20,24
	train subject indices: 1,3,5,6,7,8,11,14,15,16,17,19,21,22,
23,25,26,27,28,29,30

activityindex
code for activity level monitored
range 1 to 6 reported as factors:
	1:            WALKING
2:   WALKING_UPSTAIRS
3: WALKING_DOWNSTAIRS
4:            SITTING
5:           STANDING
6:             LAYING

meanaccelerationx  
mean of original dataset variable tBodyAcc-mean()-X normalized range -1 to 1

meanaccelerationy  
mean of original dataset variable tBodyAcc-mean()-Y normalized range -1 to 1

meanaccelerationz  
mean of original dataset variable tBodyAcc-mean()-Z  normalized range -1 to 1

stddevaccelerationx  
mean of original dataset variable tBodyAcc-std()-X  normalized range -1 to 1

stddevaccelerationy  
mean of original dataset variable tBodyAcc-std()-Y  normalized range -1 to 1


stddevaccelerationz  
mean of original dataset variable tBodyAcc-std()-Z  normalized range -1 to 1

meangravityaccelerationx  
mean of original dataset variable tGravityAcc-mean()-X  normalized range -1 to 1

meangravityaccelerationy  
mean of original dataset variable tGravityAcc-mean()-Y  normalized range -1 to 1

meangravityaccelerationz  
mean of original dataset variable tGravityAcc-mean()-Z  normalized range -1 to 1

stddevgravityaccelerationx  
mean of original dataset variable tGravityAcc-std()-X  normalized range -1 to 1

stddevgravityaccelerationy  
mean of original dataset variable tGravityAcc-std()-Y  normalized range -1 to 1

stddevgravityaccelerationz  
mean of original dataset variable tGravityAcc-std()-Z  normalized range -1 to 1

meanaccelerationjerkx  
mean of original dataset variable tBodyAccJerk-mean()-X  normalized range -1 to 1

meanaccelerationjerky  
mean of original dataset variable tBodyAccJerk-mean()-Y  normalized range -1 to 1

meanaccelerationjerkz  
mean of original dataset variable tBodyAccJerk-mean()-Z  normalized range -1 to 1

stddevaccelerationjerkx  
mean of original dataset variable tBodyAccJerk-std()-X  normalized range -1 to 1

stddevaccelerationjerky  
mean of original dataset variable tBodyAccJerk-std()-Y  normalized range -1 to 1

stddevaccelerationjerkz  
mean of original dataset variable tBodyAccJerk-std()-Z  normalized range -1 to 1

meanangularaccelerationx  
mean of original dataset variable tBodyGyro-mean()-X  normalized range -1 to 1

meanangularaccelerationy  
mean of original dataset variable tBodyGyro-mean()-Y  normalized range -1 to 1

meanangularaccelerationz  
mean of original dataset variable tBodyGyro-mean()-Z  normalized range -1 to 1

stddevangularaccelerationx  
mean of original dataset variable tBodyGyro-std()-X  normalized range -1 to 1

stddevangularaccelerationy  
mean of original dataset variable tBodyGyro-std()-Y  normalized range -1 to 1

stddevangularaccelerationz  
mean of original dataset variable tBodyGyro-std()-Z  normalized range -1 to 1

meanangularaccelerationjerkx  
mean of original dataset variable tBodyGyroJerk-mean()-X  normalized range -1 to 1

meanangularaccelerationjerky  
mean of original dataset variable tBodyGyroJerk-mean()-Y  normalized range -1 to 1

meanangularaccelerationjerkz  
mean of original dataset variable tBodyGyroJerk-mean()-Z  normalized range -1 to 1

stddevangularaccelerationjerkx  
mean of original dataset variable tBodyGyroJerk-std()-X  normalized range -1 to 1

stddevangularaccelerationjerky  
mean of original dataset variable tBodyGyroJerk-std()-Y  normalized range -1 to 1

stddevangularaccelerationjerkz  
mean of original dataset variable tBodyGyroJerk-std()-Z  normalized range -1 to 1

meanaccelerationmagnitude  
mean of original dataset variable tBodyAccMag-mean()  normalized range -1 to 1

stddevaccelerationmagnitude  
mean of original dataset variable tBodyAccMag-std()  normalized range -1 to 1

meangravityaccelerationmagnitude  
mean of original dataset variable tGravityAccMag-mean()  normalized range -1 to 1

stddevgravityaccelerationmagnitude  
mean of original dataset variable tGravityAccMag-std()  normalized range -1 to 1

meanaccelerationjerkmagnitude  
mean of original dataset variable tBodyAccJerkMag-mean()  normalized range -1 to 1

stddevaccelerationjerkmagnitude  
mean of original dataset variable tBodyAccJerkMag-std()  normalized range -1 to 1

meanangularaccelerationmagnitude  
mean of original dataset variable tBodyGyroMag-mean()  normalized range -1 to 1

stddevangularaccelerationmagnitude  
mean of original dataset variable tBodyGyroMag-std()  normalized range -1 to 1

meanangularaccelerationjerkmagnitude  
mean of original dataset variable tBodyGyroJerkMag-mean()  normalized range -1 to 1

stddevangularaccelerationjerkmagnitude  
mean of original dataset variable tBodyGyroJerkMag-std()  normalized range -1 to 1

meanfftaccelerationx  
mean of original dataset variable fBodyAcc-mean()-X  normalized range -1 to 1

meanfftaccelerationy  
mean of original dataset variable fBodyAcc-mean()-Y  normalized range -1 to 1

meanfftaccelerationz  
mean of original dataset variable fBodyAcc-mean()-Z  normalized range -1 to 1

stddevfftaccelerationx  
mean of original dataset variable fBodyAcc-std()-X  normalized range -1 to 1

stddevfftaccelerationy  
mean of original dataset variable fBodyAcc-std()-Y  normalized range -1 to 1

stddevfftaccelerationz  
mean of original dataset variable fBodyAcc-std()-Z  normalized range -1 to 1

meanfrequencyfftaccelerationx  
mean of original dataset variable fBodyAcc-meanFreq()-X  normalized range -1 to 1

meanfrequencyfftaccelerationy  
mean of original dataset variable fBodyAcc-meanFreq()-Y  normalized range -1 to 1

meanfrequencyfftaccelerationz  
mean of original dataset variable fBodyAcc-meanFreq()-Z  normalized range -1 to 1

meanfftaccelerationjerkx  
mean of original dataset variable fBodyAccJerk-mean()-X  normalized range -1 to 1

meanfftaccelerationjerky  
mean of original dataset variable fBodyAccJerk-mean()-Y  normalized range -1 to 1

meanfftaccelerationjerkz  
mean of original dataset variable fBodyAccJerk-mean()-Z  normalized range -1 to 1

stddevfftaccelerationjerkx  
mean of original dataset variable fBodyAccJerk-std()-X  normalized range -1 to 1

stddevfftaccelerationjerky  
mean of original dataset variable fBodyAccJerk-std()-Y  normalized range -1 to 1

stddevfftaccelerationjerkz  
mean of original dataset variable fBodyAccJerk-std()-Z  normalized range -1 to 1

meanfrequencyfftaccelerationjerkx  
mean of original dataset variable fBodyAccJerk-meanFreq()-X  normalized range -1 to 1

meanfrequencyfftaccelerationjerky  
mean of original dataset variable fBodyAccJerk-meanFreq()-Y  normalized range -1 to 1

meanfrequencyfftaccelerationjerkz  
mean of original dataset variable fBodyAccJerk-meanFreq()-Z  normalized range -1 to 1

meanfftangularaccelerationx  
mean of original dataset variable fBodyGyro-mean()-X  normalized range -1 to 1

meanfftangularaccelerationy  
mean of original dataset variable fBodyGyro-mean()-Y  normalized range -1 to 1

meanfftangularaccelerationz  
mean of original dataset variable fBodyGyro-mean()-Z  normalized range -1 to 1

stddevfftangularaccelerationx  
mean of original dataset variable fBodyGyro-std()-X  normalized range -1 to 1

stddevfftangularaccelerationy  
mean of original dataset variable fBodyGyro-std()-Y  normalized range -1 to 1

stddevfftangularaccelerationz  
mean of original dataset variable fBodyGyro-std()-Z  normalized range -1 to 1

meanfrequencyfftangularaccelerationx  
mean of original dataset variable fBodyGyro-meanFreq()-X  normalized range -1 to 1

meanfrequencyfftangularaccelerationy  
mean of original dataset variable fBodyGyro-meanFreq()-Y  normalized range -1 to 1

meanfrequencyfftangularaccelerationz  
mean of original dataset variable fBodyGyro-meanFreq()-Z  normalized range -1 to 1

meanfftaccelerationmagnitude  
mean of original dataset variable fBodyAccMag-mean()  normalized range -1 to 1

stddevfftaccelerationmagnitude  
mean of original dataset variable fBodyAccMag-std()  normalized range -1 to 1

meanfrequencyfftaccelerationmagnitude  
mean of original dataset variable fBodyAccMag-meanFreq()  normalized range -1 to 1

meanfftaccelerationjerkmagnitude  
mean of original dataset variable fBodyBodyAccJerkMag-mean()  normalized range -1 to 1

stddevfftaccelerationjerkmagnitude  
mean of original dataset variable fBodyBodyAccJerkMag-std()  normalized range -1 to 1

meanfrequencyfftaccelerationjerkmagnitude  
mean of original dataset variable fBodyBodyAccJerkMag-meanFreq()  normalized range -1 to 1

meanfftangularaccelerationmagnitude  
mean of original dataset variable fBodyBodyGyroMag-mean()  normalized range -1 to 1

stddevfftangularaccelerationmagnitude  
mean of original dataset variable fBodyBodyGyroMag-std()  normalized range -1 to 1

meanfrequencyfftangularaccelerationmagnitude  
mean of original dataset variable fBodyBodyGyroMag-meanFreq()  normalized range -1 to 1

meanfftangularaccelerationjerkmagnitude  
mean of original dataset variable fBodyBodyGyroJerkMag-mean()  normalized range -1 to 1

stddevfftangularaccelerationjerkmagnitude  
mean of original dataset variable fBodyBodyGyroJerkMag-std()  normalized range -1 to 1

meanfrequencyfftangularaccelerationjerkmagnitude  
mean of original dataset variable fBodyBodyGyroJerkMag-meanFreq()  normalized range -1 to 1
