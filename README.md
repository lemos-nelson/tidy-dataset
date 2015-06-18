# tidy-dataset
Coursera: Getting and Cleaning Data - Course Project

## Project Description
This is the Coursera: Getting and Cleaning Data Project assignment.

The goal was to create one R script called run_analysis.R that does the following:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Data Collection
Briefly, the data consists of acelerometer readings collected during exercise performance in human subjects.
For a full description of the dataset, go to http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Downloading the dataset
The dataset used in this project an be found at: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Creating the tidy datafile
In order to create the tidy datafile, follow these steps:

1. Download and unzip the dataset in your working directory. You should end with a folder named "UCI HAR Dataset"
2. Run the script "run_analysis.R" using R
3. In the end, you should have a .txt file inside the folder "UCI HAR Dataset" called "tidy_data.txt" with the desired results

NOTE: The script itself contains comments on each step of the process

## Description of the tidy dataset
The final dataset is a table with 180 rows (30 subject * 6 Activities) and 81 collumns (Variables)

This table contains the means of each measure, grouped by Acitivity and Subject

## Code Book
General Description of the variables (Features):

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

### Activity
 Length:180        
 Class :character  
 Mode  :character

Specifie wich of the physical activities was performed. There are 6 types: "Walking","Walking Upstairs","Walking Downstairs","Sittng", "Standing" or "Laying"
.
### Subject
 Min.   : 1.0  
 1st Qu.: 8.0  
 Median :15.5  
 Mean   :15.5  
 3rd Qu.:23.0  
 Max.   :30.0 

Identifies each subject in the experiment.

### tBodyAcc_mean_X 
 Min.   :0.2216  
 1st Qu.:0.2712  
 Median :0.2770  
 Mean   :0.2743  
 3rd Qu.:0.2800  
 Max.   :0.3015
 
###  tBodyAcc_mean_Y    
 Min.   :-0.040514  
 1st Qu.:-0.020022  
 Median :-0.017262  
 Mean   :-0.017876  
 3rd Qu.:-0.014936  
 Max.   :-0.001308 
 
### tBodyAcc_mean_Z   
 Min.   :-0.15251  
 1st Qu.:-0.11207  
 Median :-0.10819  
 Mean   :-0.10916  
 3rd Qu.:-0.10443  
 Max.   :-0.07538  

### tBodyAcc_std_X   
 Min.   :-0.9961  
 1st Qu.:-0.9799  
 Median :-0.7526  
 Mean   :-0.5577  
 3rd Qu.:-0.1984  
 Max.   : 0.6269
 
### tBodyAcc_std_Y    
 Min.   :-0.99024  
 1st Qu.:-0.94205  
 Median :-0.50897  
 Mean   :-0.46046  
 3rd Qu.:-0.03077  
 Max.   : 0.61694

### tBodyAcc_std_Z   
 Min.   :-0.9877  
 1st Qu.:-0.9498  
 Median :-0.6518  
 Mean   :-0.5756  
 3rd Qu.:-0.2306  
 Max.   : 0.6090

### tGravityAcc_mean_X
 Min.   :-0.6800   
 1st Qu.: 0.8376   
 Median : 0.9208   
 Mean   : 0.6975   
 3rd Qu.: 0.9425   
 Max.   : 0.9745
 
### tGravityAcc_mean_Y
 Min.   :-0.47989  
 1st Qu.:-0.23319  
 Median :-0.12782  
 Mean   :-0.01621  
 3rd Qu.: 0.08773  
 Max.   : 0.95659 
 
### tGravityAcc_mean_Z
 Min.   :-0.49509  
 1st Qu.:-0.11726  
 Median : 0.02384  
 Mean   : 0.07413  
 3rd Qu.: 0.14946  
 Max.   : 0.95787
 
### tGravityAcc_std_X
 Min.   :-0.9968  
 1st Qu.:-0.9825  
 Median :-0.9695  
 Mean   :-0.9638  
 3rd Qu.:-0.9509  
 Max.   :-0.8296
 
### tGravityAcc_std_Y
 Min.   :-0.9942  
 1st Qu.:-0.9711  
 Median :-0.9590  
 Mean   :-0.9524  
 3rd Qu.:-0.9370  
 Max.   :-0.6436
 
### tGravityAcc_std_Z
 Min.   :-0.9910  
 1st Qu.:-0.9605  
 Median :-0.9450  
 Mean   :-0.9364  
 3rd Qu.:-0.9180  
 Max.   :-0.6102
 
### tBodyAccJerk_mean_X
 Min.   :0.04269    
 1st Qu.:0.07396    
 Median :0.07640    
 Mean   :0.07947    
 3rd Qu.:0.08330    
 Max.   :0.13019
 
### tBodyAccJerk_mean_Y 
 Min.   :-0.0386872  
 1st Qu.: 0.0004664  
 Median : 0.0094698  
 Mean   : 0.0075652  
 3rd Qu.: 0.0134008  
 Max.   : 0.0568186
