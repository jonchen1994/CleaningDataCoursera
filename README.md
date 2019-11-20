# Read Me

Project Overview:

1) Downloaded files from the [UCI HAR Dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
2) Extract and then run_analysis.R
3) The above R file will then read the test and train datasets and combine them. 
4) Filter the initial 563 columns to just columns pertaining to mean and standard deviation information. 
5) Populates the data for Activity and Subject
6) Summarizes the reamining 79 columns by averaging them based on subject and activity. 
7) Outputs the file "tidydataset.txt"