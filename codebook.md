
Getting and Cleaning Data course project
========================================

The run_analysis.R produces a dataset in the following way:

- Combines the X_train.txt and X_test.txt in a single dataset
- Add activities code from y_train.txt and y_test.txt
- Add subjects code from subject_train.txt and subject_test.txt
- Add activity labels from activity_labels.txt
- Set column names from features.txt
- Subset only the columns that have "mean()" and "std()" in their name
- Calculate the average of all the measures by activity and subject

The final dataset has the following columns. Note: all the measures are normalized in the range [-1,1].

activity_code 
Activity code as in y_train.txt and y_test.txt
             
activity_label            
Descriptive activity label as in activity_labels.txt

subject                   
Subject code as in subject_train.txt and subject_test.txt

tBodyAcc_mean_X     
Body Acceleration mean on X axis

tBodyAcc_mean_Y           
Body Acceleration mean on Y axis

tBodyAcc_mean_Z           
Body Acceleration mean on Z axis

tBodyAcc_std_X            
Body Acceleration Standard deviation on X axis

tBodyAcc_std_Y           
Body Acceleration Standard deviation on Y axis

tBodyAcc_std_Z            
Body Acceleration Standard deviation on Z axis

tGravityAcc_mean_X        
Gravity Acceleration mean on X axis

tGravityAcc_mean_Y        
Gravity Acceleration mean on Y axis

tGravityAcc_mean_Z       
Gravity Acceleration mean on Z axis

tGravityAcc_std_X         
Gravity Acceleration standard deviation on X axis

tGravityAcc_std_Y
Gravity Acceleration standard deviation on Y axis
         
tGravityAcc_std_Z         
Gravity Acceleration standard deviation on Z axis

tBodyAccJerk_mean_X      
Body Acceleration Jerk mean on X axis

tBodyAccJerk_mean_Y       
Body Acceleration Jerk mean on Y axis

tBodyAccJerk_mean_Z       
Body Acceleration Jerk mean on Z axis

tBodyAccJerk_std_X        
Body Acceleration Jerk standard deviation on X axis

tBodyAccJerk_std_Y       
Body Acceleration Jerk standard deviation on Y axis

tBodyAccJerk_std_Z        
Body Acceleration Jerk standard deviation on Z axis

tBodyGyro_mean_X          
Gyroscope signal mean on X axis

tBodyGyro_mean_Y          
Gyroscope signal mean on Y axis

tBodyGyro_mean_Z         
Gyroscope signal mean on Z axis

tBodyGyro_std_X           
Gyroscope signal standard deviation on X axis

tBodyGyro_std_Y           
Gyroscope signal standard deviation on Y axis

tBodyGyro_std_Z           
Gyroscope signal standard deviation on Z axis

tBodyGyroJerk_mean_X     
Gyroscope jerk mean on X axis

tBodyGyroJerk_mean_Y      
Gyroscope jerk mean on Y axis

tBodyGyroJerk_mean_Z      
Gyroscope jerk mean on Z axis

tBodyGyroJerk_std_X     
Gyroscope jerk standard deviation on X axis
  
tBodyGyroJerk_std_Y      
Gyroscope jerk standard deviation on Y axis

tBodyGyroJerk_std_Z       
Gyroscope jerk standard deviation on Z axis

tBodyAccMag_mean          
Body Acceleration Magnitude mean

tBodyAccMag_std           
Body Acceleration Magnitude standard deviation

tGravityAccMag_mean      
Gravity Acceleration Magnitude mean

tGravityAccMag_std        
Gravity Acceleration Magnitude standard deviation

tBodyAccJerkMag_mean      
Body Acceleration Jerk Magnitude mean

tBodyAccJerkMag_std       
Body Acceleration Jerk Magnitude standard deviation

tBodyGyroMag_mean      
Gyroscope Signal Magnitude mean

tBodyGyroMag_std          
Gyroscope Signal Magnitude standard deviation

tBodyGyroJerkMag_mean     
Gyroscope Jerk Magnitude mean

tBodyGyroJerkMag_std      
Gyroscope Jerk Magnitude standard deviation

fBodyAcc_mean_X
Fast fourier transform of Body Acceleration, mean on X axis
          
fBodyAcc_mean_Y          
Fast fourier transform of Body Acceleration, mean on Y axis
 
fBodyAcc_mean_Z           
Fast fourier transform of Body Acceleration, mean on Z axis

fBodyAcc_std_X            
Fast fourier transform of Body Acceleration, standard deviation on X axis

fBodyAcc_std_Y           
Fast fourier transform of Body Acceleration, standard deviation on Y axis

fBodyAcc_std_Z            
Fast fourier transform of Body Acceleration, standard deviation on Z axis

fBodyAccJerk_mean_X      
Fast fourier transform of Body Acceleration Jerk, mean on X axis
 
fBodyAccJerk_mean_Y       
Fast fourier transform of Body Acceleration Jerk, mean on Y axis

fBodyAccJerk_mean_Z      
Fast fourier transform of Body Acceleration Jerk, mean on Z axis

fBodyAccJerk_std_X        
Fast fourier transform of Body Acceleration Jerk, standard deviation on X axis

fBodyAccJerk_std_Y        
Fast fourier transform of Body Acceleration Jerk, standard deviation on Y axis

fBodyAccJerk_std_Z        
Fast fourier transform of Body Acceleration Jerk, standard deviation on Z axis

fBodyGyro_mean_X         
Fast fourier transform of Gyroscope signal, mean on X axis

fBodyGyro_mean_Y          
Fast fourier transform of Gyroscope signal, mean on Y axis

fBodyGyro_mean_Z          
Fast fourier transform of Gyroscope signal, mean on Z axis

fBodyGyro_std_X           
Fast fourier transform of Gyroscope signal, standard deviation on X axis

fBodyGyro_std_Y          
Fast fourier transform of Gyroscope signal, standard deviation on Y axis

fBodyGyro_std_Z           
Fast fourier transform of Gyroscope signal, standard deviation on Z axis

fBodyAccMag_mean          
Fast fourier transform of Body Acceleration Magnitude, mean

fBodyAccMag_std           
Fast fourier transform of Body Acceleration Magnitude, standard deviation

fBodyBodyAccJerkMag_mean
Fast fourier transform of Body Acceleration Jerk Magnitude, mean
 
fBodyBodyAccJerkMag_std   
Fast fourier transform of Body Acceleration Jerk Magnitude, standard deviation

fBodyBodyGyroMag_mean    
Fast fourier transform of Gyroscope Signal Magnitude, mean
 
fBodyBodyGyroMag_std      
Fast fourier transform of Gyroscope Signal Magnitude, standard deviation

fBodyBodyGyroJerkMag_mean
Fast fourier transform of Gyroscope Jerk Magnitude, mean

fBodyBodyGyroJerkMag_std 
Fast fourier transform of Gyroscope Jerk Magnitude, standard deviation