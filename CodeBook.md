# Introduction

This dataset provides the following variables:

1. SubjectID - ID of participant. 30 Participants total.
2. Activity - Statement of activity applied to the participant. 
3. Mean and Standard Deviation for the following:
  * tBodyAcc
  * tGravityAcc
  * tBodyAccJerk
  * tBodyGyro
  * tBodyGyroJerk
  * tBodyAccMag
  * tGravityAccMag
  * tBodyAccJerkMag
  * tBodyGyroMag
  * tBodyGyroJerkMag
  * fBodyAcc
  * fBodyAccJerk
  * fBodyGyro
  * fBodyAccMag
  * fbodyAccJerkMag
  * fBodyGyroMag
  * fBodyGyroJerkMag
  
For the non-"Mag" variables, there is a XYZ component. Which comes from data collected by having the participants hold a Samsung phone with radial data collection abilities at their waist while performing the activites. 

# CodeBook

1. Combined the files for "test" and "train". Each "complete" file was made up of the following:
  * x_data(Phone collected data), subject_data(identifies the subjects), and y_data(Activity)
2. "test" and "train" were then merged and filtered for just standard deviation and mean columns.
3. Using the "activity_lables.txt" file - clearer labels replaced the original levels from the y_data sheet.
4. Finally based on participant and activity, the data from x_data was then averaged. 