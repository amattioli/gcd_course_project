test <- read.table("test/X_test.txt")
train <- read.table("train/X_train.txt")
all <- rbind(train,test)

labels <- read.table("features.txt")
names(all) <- labels$V2

filtered_labels <- as.character(labels$V2[grepl(".*-mean\\(\\).*",labels$V2) | grepl(".*-std\\(\\).*",labels$V2)])
all <- all[,filtered_labels]

test_activities <- read.table("test/y_test.txt")
train_activities <- read.table("train/y_train.txt")
all_activities <- rbind(train_activities, test_activities)
names(all_activities) <- c("activity_code")
all <- cbind(all,all_activities)

activity_labels <- read.table("activity_labels.txt")
names(activity_labels) <- c("activity_code","activity_label")
all <- merge(all,activity_labels,all=TRUE)

test_subjects <- read.table("test/subject_test.txt")
train_subjects <- read.table("train/subject_train.txt")
all_subjects <- rbind(test_subjects,train_subjects)
names(all_subjects) <- c("subject")
all <- cbind(all, all_subjects)

names(all) <- sub("-","_",names(all),fixed=TRUE)
names(all) <- sub("-","_",names(all),fixed=TRUE)
names(all) <- sub("()","",names(all),fixed=TRUE)

result <- 
ddply(all,c("activity_code","activity_label","subject"),summarize,
      tBodyAcc_mean_X = mean(tBodyAcc_mean_X),                    
      tBodyAcc_mean_Y = mean(tBodyAcc_mean_Y),                    
      tBodyAcc_mean_Z = mean(tBodyAcc_mean_Z),                    
      tBodyAcc_std_X = mean(tBodyAcc_std_X),                      
      tBodyAcc_std_Y = mean(tBodyAcc_std_Y),                      
      tBodyAcc_std_Z = mean(tBodyAcc_std_Z),                      
      tGravityAcc_mean_X = mean(tGravityAcc_mean_X),              
      tGravityAcc_mean_Y = mean(tGravityAcc_mean_Y),              
      tGravityAcc_mean_Z = mean(tGravityAcc_mean_Z),              
      tGravityAcc_std_X = mean(tGravityAcc_std_X),                
      tGravityAcc_std_Y = mean(tGravityAcc_std_Y),                
      tGravityAcc_std_Z = mean(tGravityAcc_std_Z),                
      tBodyAccJerk_mean_X = mean(tBodyAccJerk_mean_X),            
      tBodyAccJerk_mean_Y = mean(tBodyAccJerk_mean_Y),            
      tBodyAccJerk_mean_Z = mean(tBodyAccJerk_mean_Z),            
      tBodyAccJerk_std_X = mean(tBodyAccJerk_std_X),              
      tBodyAccJerk_std_Y = mean(tBodyAccJerk_std_Y),              
      tBodyAccJerk_std_Z = mean(tBodyAccJerk_std_Z),              
      tBodyGyro_mean_X = mean(tBodyGyro_mean_X),                  
      tBodyGyro_mean_Y = mean(tBodyGyro_mean_Y),                  
      tBodyGyro_mean_Z = mean(tBodyGyro_mean_Z),                  
      tBodyGyro_std_X = mean(tBodyGyro_std_X),                    
      tBodyGyro_std_Y = mean(tBodyGyro_std_Y),                    
      tBodyGyro_std_Z = mean(tBodyGyro_std_Z),                    
      tBodyGyroJerk_mean_X = mean(tBodyGyroJerk_mean_X),          
      tBodyGyroJerk_mean_Y = mean(tBodyGyroJerk_mean_Y),          
      tBodyGyroJerk_mean_Z = mean(tBodyGyroJerk_mean_Z),          
      tBodyGyroJerk_std_X = mean(tBodyGyroJerk_std_X),            
      tBodyGyroJerk_std_Y = mean(tBodyGyroJerk_std_Y),            
      tBodyGyroJerk_std_Z = mean(tBodyGyroJerk_std_Z),            
      tBodyAccMag_mean = mean(tBodyAccMag_mean),                  
      tBodyAccMag_std = mean(tBodyAccMag_std),                    
      tGravityAccMag_mean = mean(tGravityAccMag_mean),            
      tGravityAccMag_std = mean(tGravityAccMag_std),              
      tBodyAccJerkMag_mean = mean(tBodyAccJerkMag_mean),          
      tBodyAccJerkMag_std = mean(tBodyAccJerkMag_std),            
      tBodyGyroMag_mean = mean(tBodyGyroMag_mean),                
      tBodyGyroMag_std = mean(tBodyGyroMag_std),                  
      tBodyGyroJerkMag_mean = mean(tBodyGyroJerkMag_mean),        
      tBodyGyroJerkMag_std = mean(tBodyGyroJerkMag_std),          
      fBodyAcc_mean_X = mean(fBodyAcc_mean_X),                    
      fBodyAcc_mean_Y = mean(fBodyAcc_mean_Y),                    
      fBodyAcc_mean_Z = mean(fBodyAcc_mean_Z),                    
      fBodyAcc_std_X = mean(fBodyAcc_std_X),                      
      fBodyAcc_std_Y = mean(fBodyAcc_std_Y),                      
      fBodyAcc_std_Z = mean(fBodyAcc_std_Z),                      
      fBodyAccJerk_mean_X = mean(fBodyAccJerk_mean_X),            
      fBodyAccJerk_mean_Y = mean(fBodyAccJerk_mean_Y),            
      fBodyAccJerk_mean_Z = mean(fBodyAccJerk_mean_Z),            
      fBodyAccJerk_std_X = mean(fBodyAccJerk_std_X),              
      fBodyAccJerk_std_Y = mean(fBodyAccJerk_std_Y),              
      fBodyAccJerk_std_Z = mean(fBodyAccJerk_std_Z),              
      fBodyGyro_mean_X = mean(fBodyGyro_mean_X),                  
      fBodyGyro_mean_Y = mean(fBodyGyro_mean_Y),                  
      fBodyGyro_mean_Z = mean(fBodyGyro_mean_Z),                  
      fBodyGyro_std_X = mean(fBodyGyro_std_X),                    
      fBodyGyro_std_Y = mean(fBodyGyro_std_Y),                    
      fBodyGyro_std_Z = mean(fBodyGyro_std_Z),                    
      fBodyAccMag_mean = mean(fBodyAccMag_mean),                  
      fBodyAccMag_std = mean(fBodyAccMag_std),                    
      fBodyBodyAccJerkMag_mean = mean(fBodyBodyAccJerkMag_mean),  
      fBodyBodyAccJerkMag_std = mean(fBodyBodyAccJerkMag_std),    
      fBodyBodyGyroMag_mean = mean(fBodyBodyGyroMag_mean),        
      fBodyBodyGyroMag_std = mean(fBodyBodyGyroMag_std),          
      fBodyBodyGyroJerkMag_mean = mean(fBodyBodyGyroJerkMag_mean),
      fBodyBodyGyroJerkMag_std = mean(fBodyBodyGyroJerkMag_std))

result
