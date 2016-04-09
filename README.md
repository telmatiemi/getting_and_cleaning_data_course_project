# getting_and_cleaning_data_course_project
Getting and Cleaning Data course project

The goal of this project ir generate a .txt file containing the average values for mean and standard deviation values grouped by subject and activity. 

The files with all the measurements were obtained through the link below:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The files used as source for this project are:

activity_labels.txt
features.txt
subject_test.txt
X_test.txt
y_test.txt
subject_train.txt
X_train.txt
y_train

It was created a script called run_analysis.R to generate the output file.

The script follows the steps below:

1) All the files mentioned above where read and each of them was created as a data_frame.

2) For data frames related to subjects and activities, the column names were replaced by more descriptive and intuitive names (For example: "subject", "activity").

3) In activity data frames was included a column with the description of the activity. (WALKING, SITTING, STANDING, etc.)

4) From data frames containing measurements, It was extracted columns related to mean and standard deviation measurements.

5) Activity description, subjects and measurement columns were bound for test and train.

6) The rows generated in step 5 for test and train were bound.

7) The average of each measurement were calculated through aggregate function.

8) The step 7 results were loaded to Week4_Assignment.txt file.
