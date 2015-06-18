#############################
# Getting and Cleaning Data #
# ------------------------- #
#    Creating Tidy Data     #
#############################



#You should create one R script called run_analysis.R that does the following. 

#1 Merges the training and the test sets to create one data set.
#2 Extracts only the measurements on the mean and standard deviation for each measurement. 
#3 Uses descriptive activity names to name the activities in the data set
#4 Appropriately labels the data set with descriptive variable names. 
#5 From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# -----------------------
# 1. MERGING TRAIN + TEST
# -----------------------

### Setting the environment and Loading tools
    
    #Check if "dplyr" packagae is installed
    if (require("dplyr")==FALSE) {
        install.packages("dplyr")
    }
    
    library(dplyr)
    

    #setting wd
    Directory <- "UCI HAR Dataset"
    setwd(Directory)

    #Loading "Test" and "Test" data
    test_data <- read.table("test/X_test.txt")
    train_data <- read.table("train/X_train.txt")

    #Merging Train + Test dataset
    all <- rbind(test_data,train_data)
    rm(test_data,train_data)

    datatbl <- tbl_df(all)
    rm(all)
# -----------------------
# 2. MEAN & STD
# -----------------------

    #Selecting the mean and standard deviation from "features.txt"
    
    label_feat <- read.table("features.txt")
    label_feat <- label_feat[2]
    names(label_feat) <- "Features"
    #Replacing some characters (such as "()") in order to avoid further problems
    label_feat$Features <- gsub("-","_",as.character(label_feat$Features))
    label_feat$Features <- gsub("()","",as.character(label_feat$Features),fixed=TRUE)
    label_feat$Features <- gsub("(","_",as.character(label_feat$Features),fixed=TRUE)
    label_feat$Features <- gsub(",","_",as.character(label_feat$Features),fixed=TRUE)
    label_feat$Features <- gsub(")","",as.character(label_feat$Features),fixed=TRUE)

    index_me <- grep("mean",label_feat$Features)
    index_sd <- grep("std",label_feat$Features)
    index <- sort(c(index_me,index_sd))


    Mean_SD_tbl <-  select(datatbl,index)
    Mean_SD_label <- label_feat[index,1]

    rm(index,index_me,index_sd,datatbl)

# -----------------------
# 3. ACTIITY LABELS
# -----------------------

    test_act <- read.table("test/Y_test.txt")
    train_act <- read.table("train/Y_train.txt")

    label_act <- read.table("activity_labels.txt", stringsAsFactors=FALSE)
    label_act <- label_act[2]
    names(label_act) <- "Activity"

# ---------------------------
# 4. REPLACING W/ ACT LABELS
# ---------------------------    

    for (i in 1:6){
        idx1 <- test_act == i
        test_act[idx1,1] <- label_act[i,1]
        
        idx2 <- train_act == i
        train_act[idx2,1] <- label_act[i,1]
    }

    all_act <- rbind(test_act,train_act)

    rm(test_act,train_act,idx1,idx2,i)
    
# -----------------------
# 5. TIDY DATA
# -----------------------

    #Subbects vector

    test_sub <- read.table("test/subject_test.txt")
    train_sub <- read.table("train/subject_train.txt")
    subjects <- rbind(test_sub,train_sub)
    names(subjects) <- "Subject"
    rm(test_sub,train_sub)

    names(Mean_SD_tbl) <- Mean_SD_label
    names(all_act) <- "Activity"

    #Subjects + Activity + Data

    all_data <- cbind(subjects,all_act,Mean_SD_tbl)
    all_data <- tbl_df(all_data)
    #Summarize the means for EACH variable
    tidy_data <- 
        all_data %>%
            group_by(Activity,Subject) %>%
                summarise_each(funs(mean))

    rm(Mean_SD_tbl,Mean_SD_label,all_act,all_data,label_act,label_feat,subjects)

    #Creating an .txt ouptup file with the tidy data
    write.table(tidy_data,"tidy_data.txt",row.name=FALSE)