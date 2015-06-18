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
 
###tBodyAcc_mean_Y    
 Min.   :-0.040514  
 1st Qu.:-0.020022  
 Median :-0.017262  
 Mean   :-0.017876  
 3rd Qu.:-0.014936  
 Max.   :-0.001308  

###tBodyAcc_mean_Z   
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

### tBodyAccJerk_mean_Z
 Min.   :-0.067458  
 1st Qu.:-0.010601  
 Median :-0.003861  
 Mean   :-0.004953  
 3rd Qu.: 0.001958  
 Max.   : 0.038053  

### tBodyAccJerk_std_X
 Min.   :-0.9946   
 1st Qu.:-0.9832   
 Median :-0.8104   
 Mean   :-0.5949   
 3rd Qu.:-0.2233   
 Max.   : 0.5443   

### tBodyAccJerk_std_Y
 Min.   :-0.9895   
 1st Qu.:-0.9724   
 Median :-0.7756   
 Mean   :-0.5654   
 3rd Qu.:-0.1483   
 Max.   : 0.3553   

### tBodyAccJerk_std_Z
 Min.   :-0.99329  
 1st Qu.:-0.98266  
 Median :-0.88366  
 Mean   :-0.73596  
 3rd Qu.:-0.51212  
 Max.   : 0.03102  

### tBodyGyro_mean_X  
 Min.   :-0.20578  
 1st Qu.:-0.04712  
 Median :-0.02871  
 Mean   :-0.03244  
 3rd Qu.:-0.01676  
 Max.   : 0.19270  

### tBodyGyro_mean_Y  
 Min.   :-0.20421  
 1st Qu.:-0.08955  
 Median :-0.07318  
 Mean   :-0.07426  
 3rd Qu.:-0.06113  
 Max.   : 0.02747  

### tBodyGyro_mean_Z  
 Min.   :-0.07245  
 1st Qu.: 0.07475  
 Median : 0.08512  
 Mean   : 0.08744  
 3rd Qu.: 0.10177  
 Max.   : 0.17910  

### tBodyGyro_std_X  
 Min.   :-0.9943  
 1st Qu.:-0.9735  
 Median :-0.7890  
 Mean   :-0.6916  
 3rd Qu.:-0.4414  
 Max.   : 0.2677  

### tBodyGyro_std_Y  
 Min.   :-0.9942  
 1st Qu.:-0.9629  
 Median :-0.8017  
 Mean   :-0.6533  
 3rd Qu.:-0.4196  
 Max.   : 0.4765  

### tBodyGyro_std_Z  
 Min.   :-0.9855  
 1st Qu.:-0.9609  
 Median :-0.8010  
 Mean   :-0.6164  
 3rd Qu.:-0.3106  
 Max.   : 0.5649  

### tBodyGyroJerk_mean_X
 Min.   :-0.15721    
 1st Qu.:-0.10322    
 Median :-0.09868    
 Mean   :-0.09606    
 3rd Qu.:-0.09110    
 Max.   :-0.02209    

### tBodyGyroJerk_mean_Y
 Min.   :-0.07681    
 1st Qu.:-0.04552    
 Median :-0.04112    
 Mean   :-0.04269    
 3rd Qu.:-0.03842    
 Max.   :-0.01320    

### tBodyGyroJerk_mean_Z
 Min.   :-0.092500   
 1st Qu.:-0.061725   
 Median :-0.053430   
 Mean   :-0.054802   
 3rd Qu.:-0.048985   
 Max.   :-0.006941   

### tBodyGyroJerk_std_X
 Min.   :-0.9965    
 1st Qu.:-0.9800    
 Median :-0.8396    
 Mean   :-0.7036    
 3rd Qu.:-0.4629    
 Max.   : 0.1791    

### tBodyGyroJerk_std_Y
 Min.   :-0.9971    
 1st Qu.:-0.9832    
 Median :-0.8942    
 Mean   :-0.7636    
 3rd Qu.:-0.5861    
 Max.   : 0.2959    

### tBodyGyroJerk_std_Z
 Min.   :-0.9954    
 1st Qu.:-0.9848    
 Median :-0.8610    
 Mean   :-0.7096    
 3rd Qu.:-0.4741    
 Max.   : 0.1932    

### tBodyAccMag_mean 
 Min.   :-0.9865  
 1st Qu.:-0.9573  
 Median :-0.4829  
 Mean   :-0.4973  
 3rd Qu.:-0.0919  
 Max.   : 0.6446  

### tBodyAccMag_std  
 Min.   :-0.9865  
 1st Qu.:-0.9430  
 Median :-0.6074  
 Mean   :-0.5439  
 3rd Qu.:-0.2090  
 Max.   : 0.4284  

### tGravityAccMag_mean
 Min.   :-0.9865    
 1st Qu.:-0.9573    
 Median :-0.4829    
 Mean   :-0.4973    
 3rd Qu.:-0.0919    
 Max.   : 0.6446    

### tGravityAccMag_std
 Min.   :-0.9865   
 1st Qu.:-0.9430   
 Median :-0.6074   
 Mean   :-0.5439   
 3rd Qu.:-0.2090   
 Max.   : 0.4284   

### tBodyAccJerkMag_mean
 Min.   :-0.9928     
 1st Qu.:-0.9807     
 Median :-0.8168     
 Mean   :-0.6079     
 3rd Qu.:-0.2456     
 Max.   : 0.4345     

### tBodyAccJerkMag_std
 Min.   :-0.9946    
 1st Qu.:-0.9765    
 Median :-0.8014    
 Mean   :-0.5842    
 3rd Qu.:-0.2173    
 Max.   : 0.4506    

### tBodyGyroMag_mean
 Min.   :-0.9807  
 1st Qu.:-0.9461  
 Median :-0.6551  
 Mean   :-0.5652  
 3rd Qu.:-0.2159  
 Max.   : 0.4180  

### tBodyGyroMag_std 
 Min.   :-0.9814  
 1st Qu.:-0.9476  
 Median :-0.7420  
 Mean   :-0.6304  
 3rd Qu.:-0.3602  
 Max.   : 0.3000  

### tBodyGyroJerkMag_mean
 Min.   :-0.99732     
 1st Qu.:-0.98515     
 Median :-0.86479     
 Mean   :-0.73637     
 3rd Qu.:-0.51186     
 Max.   : 0.08758     

### tBodyGyroJerkMag_std
 Min.   :-0.9977     
 1st Qu.:-0.9805     
 Median :-0.8809     
 Mean   :-0.7550     
 3rd Qu.:-0.5767     
 Max.   : 0.2502     

### fBodyAcc_mean_X  
 Min.   :-0.9952  
 1st Qu.:-0.9787  
 Median :-0.7691  
 Mean   :-0.5758  
 3rd Qu.:-0.2174  
 Max.   : 0.5370  

### fBodyAcc_mean_Y   
 Min.   :-0.98903  
 1st Qu.:-0.95361  
 Median :-0.59498  
 Mean   :-0.48873  
 3rd Qu.:-0.06341  
 Max.   : 0.52419  

### fBodyAcc_mean_Z  
 Min.   :-0.9895  
 1st Qu.:-0.9619  
 Median :-0.7236  
 Mean   :-0.6297  
 3rd Qu.:-0.3183  
 Max.   : 0.2807  

### fBodyAcc_std_X   
 Min.   :-0.9966  
 1st Qu.:-0.9820  
 Median :-0.7470  
 Mean   :-0.5522  
 3rd Qu.:-0.1966  
 Max.   : 0.6585  

### fBodyAcc_std_Y    
 Min.   :-0.99068  
 1st Qu.:-0.94042  
 Median :-0.51338  
 Mean   :-0.48148  
 3rd Qu.:-0.07913  
 Max.   : 0.56019  

### fBodyAcc_std_Z   
 Min.   :-0.9872  
 1st Qu.:-0.9459  
 Median :-0.6441  
 Mean   :-0.5824  
 3rd Qu.:-0.2655  
 Max.   : 0.6871  

### fBodyAcc_meanFreq_X
 Min.   :-0.63591   
 1st Qu.:-0.39165   
 Median :-0.25731   
 Mean   :-0.23227   
 3rd Qu.:-0.06105   
 Max.   : 0.15912   

### fBodyAcc_meanFreq_Y
 Min.   :-0.379518  
 1st Qu.:-0.081314  
 Median : 0.007855  
 Mean   : 0.011529  
 3rd Qu.: 0.086281  
 Max.   : 0.466528  

### fBodyAcc_meanFreq_Z
 Min.   :-0.52011   
 1st Qu.:-0.03629   
 Median : 0.06582   
 Mean   : 0.04372   
 3rd Qu.: 0.17542   
 Max.   : 0.40253   

### fBodyAccJerk_mean_X
 Min.   :-0.9946    
 1st Qu.:-0.9828    
 Median :-0.8126    
 Mean   :-0.6139    
 3rd Qu.:-0.2820    
 Max.   : 0.4743    

### fBodyAccJerk_mean_Y
 Min.   :-0.9894    
 1st Qu.:-0.9725    
 Median :-0.7817    
 Mean   :-0.5882    
 3rd Qu.:-0.1963    
 Max.   : 0.2767    

### fBodyAccJerk_mean_Z
 Min.   :-0.9920    
 1st Qu.:-0.9796    
 Median :-0.8707    
 Mean   :-0.7144    
 3rd Qu.:-0.4697    
 Max.   : 0.1578    

### fBodyAccJerk_std_X
 Min.   :-0.9951   
 1st Qu.:-0.9847   
 Median :-0.8254   
 Mean   :-0.6121   
 3rd Qu.:-0.2475   
 Max.   : 0.4768   

### fBodyAccJerk_std_Y
 Min.   :-0.9905   
 1st Qu.:-0.9737   
 Median :-0.7852   
 Mean   :-0.5707   
 3rd Qu.:-0.1685   
 Max.   : 0.3498   

### fBodyAccJerk_std_Z 
 Min.   :-0.993108  
 1st Qu.:-0.983747  
 Median :-0.895121  
 Mean   :-0.756489  
 3rd Qu.:-0.543787  
 Max.   :-0.006236  

### fBodyAccJerk_meanFreq_X
 Min.   :-0.57604       
 1st Qu.:-0.28966       
 Median :-0.06091       
 Mean   :-0.06910       
 3rd Qu.: 0.17660       
 Max.   : 0.33145       

### fBodyAccJerk_meanFreq_Y
 Min.   :-0.60197       
 1st Qu.:-0.39751       
 Median :-0.23209       
 Mean   :-0.22810       
 3rd Qu.:-0.04721       
 Max.   : 0.19568       

### fBodyAccJerk_meanFreq_Z
 Min.   :-0.62756       
 1st Qu.:-0.30867       
 Median :-0.09187       
 Mean   :-0.13760       
 3rd Qu.: 0.03858       
 Max.   : 0.23011       

### fBodyGyro_mean_X 
 Min.   :-0.9931  
 1st Qu.:-0.9697  
 Median :-0.7300  
 Mean   :-0.6367  
 3rd Qu.:-0.3387  
 Max.   : 0.4750  

### fBodyGyro_mean_Y 
 Min.   :-0.9940  
 1st Qu.:-0.9700  
 Median :-0.8141  
 Mean   :-0.6767  
 3rd Qu.:-0.4458  
 Max.   : 0.3288  

### fBodyGyro_mean_Z 
 Min.   :-0.9860  
 1st Qu.:-0.9624  
 Median :-0.7909  
 Mean   :-0.6044  
 3rd Qu.:-0.2635  
 Max.   : 0.4924  

### fBodyGyro_std_X  
 Min.   :-0.9947  
 1st Qu.:-0.9750  
 Median :-0.8086  
 Mean   :-0.7110  
 3rd Qu.:-0.4813  
 Max.   : 0.1966  

### fBodyGyro_std_Y  
 Min.   :-0.9944  
 1st Qu.:-0.9602  
 Median :-0.7964  
 Mean   :-0.6454  
 3rd Qu.:-0.4154  
 Max.   : 0.6462  

### fBodyGyro_std_Z  
 Min.   :-0.9867  
 1st Qu.:-0.9643  
 Median :-0.8224  
 Mean   :-0.6577  
 3rd Qu.:-0.3916  
 Max.   : 0.5225  

### fBodyGyro_meanFreq_X
 Min.   :-0.395770   
 1st Qu.:-0.213363   
 Median :-0.115527   
 Mean   :-0.104551   
 3rd Qu.: 0.002655   
 Max.   : 0.249209   

### fBodyGyro_meanFreq_Y
 Min.   :-0.66681    
 1st Qu.:-0.29433    
 Median :-0.15794    
 Mean   :-0.16741    
 3rd Qu.:-0.04269    
 Max.   : 0.27314    

### fBodyGyro_meanFreq_Z
 Min.   :-0.50749    
 1st Qu.:-0.15481    
 Median :-0.05081    
 Mean   :-0.05718    
 3rd Qu.: 0.04152    
 Max.   : 0.37707    

### fBodyAccMag_mean 
 Min.   :-0.9868  
 1st Qu.:-0.9560  
 Median :-0.6703  
 Mean   :-0.5365  
 3rd Qu.:-0.1622  
 Max.   : 0.5866  

### fBodyAccMag_std  
 Min.   :-0.9876  
 1st Qu.:-0.9452  
 Median :-0.6513  
 Mean   :-0.6210  
 3rd Qu.:-0.3654  
 Max.   : 0.1787  

### fBodyAccMag_meanFreq
 Min.   :-0.31234    
 1st Qu.:-0.01475    
 Median : 0.08132    
 Mean   : 0.07613    
 3rd Qu.: 0.17436    
 Max.   : 0.43585    

### fBodyBodyAccJerkMag_mean
 Min.   :-0.9940         
 1st Qu.:-0.9770         
 Median :-0.7940         
 Mean   :-0.5756         
 3rd Qu.:-0.1872         
 Max.   : 0.5384         

### fBodyBodyAccJerkMag_std
 Min.   :-0.9944        
 1st Qu.:-0.9752        
 Median :-0.8126        
 Mean   :-0.5992        
 3rd Qu.:-0.2668        
 Max.   : 0.3163        

### fBodyBodyAccJerkMag_meanFreq
 Min.   :-0.12521            
 1st Qu.: 0.04527            
 Median : 0.17198            
 Mean   : 0.16255            
 3rd Qu.: 0.27593            
 Max.   : 0.48809            

### fBodyBodyGyroMag_mean
 Min.   :-0.9865      
 1st Qu.:-0.9616      
 Median :-0.7657      
 Mean   :-0.6671      
 3rd Qu.:-0.4087      
 Max.   : 0.2040      

### fBodyBodyGyroMag_std
 Min.   :-0.9815     
 1st Qu.:-0.9488     
 Median :-0.7727     
 Mean   :-0.6723     
 3rd Qu.:-0.4277     
 Max.   : 0.2367     

### fBodyBodyGyroMag_meanFreq
 Min.   :-0.45664         
 1st Qu.:-0.16951         
 Median :-0.05352         
 Mean   :-0.03603         
 3rd Qu.: 0.08228         
 Max.   : 0.40952         

### fBodyBodyGyroJerkMag_mean
 Min.   :-0.9976          
 1st Qu.:-0.9813          
 Median :-0.8779          
 Mean   :-0.7564          
 3rd Qu.:-0.5831          
 Max.   : 0.1466          

### fBodyBodyGyroJerkMag_std
 Min.   :-0.9976         
 1st Qu.:-0.9802         
 Median :-0.8941         
 Mean   :-0.7715         
 3rd Qu.:-0.6081         
 Max.   : 0.2878         

### fBodyBodyGyroJerkMag_meanFreq
 Min.   :-0.18292             
 1st Qu.: 0.05423             
 Median : 0.11156             
 Mean   : 0.12592             
 3rd Qu.: 0.20805             
 Max.   : 0.42630  
