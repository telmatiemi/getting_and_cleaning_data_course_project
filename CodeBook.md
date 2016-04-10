#CodeBook for Getting and Cleaning Data Course Project

The output file contains the average value of measurements related to mean and standard deviation grouped by activity and subject.

Each column available in the output file is detailed below.

activity_description:
Might have the domain below:

WALKING
WALKING_UPSTAIRS
WALKING_DOWNSTAIRS
SITTING
STANDING
LAYING

subject:
Represents the 30 volunteers in this experiment. They are identified by numbers in a range from 1 to 30.

The 66 measurements names were formatted following the standard below:

(1) + "_" (2) + (3) + (4) + "." + (5) + "..." + (6)

(1) - Prefix that denotes either time or frequency domain signals. 
Domain: time
        frequency
        
(2) - Acceleration signal. 
Domain: Body - Body accelation
        Gravity - Gravity acceleration

(3) - Denotes whether the data was obtained from a gyroscope or a accelerometer.
Domain: Gyroscope
        Accelerometer
        
(4) - If the body linear acceleration and angular velocity were derived in time to obtain Jerk signals:
Domain: Jerk

(5) - The set of variables that were estimated from these signals:
Domain: mean - Mean value
        std - Standard deviation
        
(6) - Denotes 3-axial signals in the X, Y and Z directions:
Domain: X
        Y               
        Z
        
The 66 measurements related to mean and std are listed below:

time_BodyAccelerometer.mean...X
time_BodyAccelerometer.mean...Y
time_BodyAccelerometer.mean...Z
time_BodyAccelerometer.std...X
time_BodyAccelerometer.std...Y
time_BodyAccelerometer.std...Z
time_GravityAccelerometer.mean...X
time_GravityAccelerometer.mean...Y
time_GravityAccelerometer.mean...Z
time_GravityAccelerometer.std...X
time_GravityAccelerometer.std...Y
time_GravityAccelerometer.std...Z
time_BodyAccelerometerJerk.mean...X
time_BodyAccelerometerJerk.mean...Y
time_BodyAccelerometerJerk.mean...Z
time_BodyAccelerometerJerk.std...X
time_BodyAccelerometerJerk.std...Y
time_BodyAccelerometerJerk.std...Z
time_BodyGyroscope.mean...X
time_BodyGyroscope.mean...Y
time_BodyGyroscope.mean...Z
time_BodyGyroscope.std...X
time_BodyGyroscope.std...Y
time_BodyGyroscope.std...Z
time_BodyGyroscopeJerk.mean...X
time_BodyGyroscopeJerk.mean...Y
time_BodyGyroscopeJerk.mean...Z
time_BodyGyroscopeJerk.std...X
time_BodyGyroscopeJerk.std...Y
time_BodyGyroscopeJerk.std...Z
time_BodyAccelerometerMag.mean..
time_BodyAccelerometerMag.std..
time_GravityAccelerometerMag.mean..
time_GravityAccelerometerMag.std..
time_BodyAccelerometerJerkMag.mean..
time_BodyAccelerometerJerkMag.std..
time_BodyGyroscopeMag.mean..
time_BodyGyroscopeMag.std..
time_BodyGyroscopeJerkMag.mean..
time_BodyGyroscopeJerkMag.std..
frequency_BodyAccelerometer.mean...X
frequency_BodyAccelerometer.mean...Y
frequency_BodyAccelerometer.mean...Z
frequency_BodyAccelerometer.std...X
frequency_BodyAccelerometer.std...Y
frequency_BodyAccelerometer.std...Z
frequency_BodyAccelerometerJerk.mean...X
frequency_BodyAccelerometerJerk.mean...Y
frequency_BodyAccelerometerJerk.mean...Z
frequency_BodyAccelerometerJerk.std...X
frequency_BodyAccelerometerJerk.std...Y
frequency_BodyAccelerometerJerk.std...Z
frequency_BodyGyroscope.mean...X
frequency_BodyGyroscope.mean...Y
frequency_BodyGyroscope.mean...Z
frequency_BodyGyroscope.std...X
frequency_BodyGyroscope.std...Y
frequency_BodyGyroscope.std...Z
frequency_BodyAccelerometerMag.mean..
frequency_BodyAccelerometerMag.std..
frequency_BodyBodyAccelerometerJerkMag.mean..
frequency_BodyBodyAccelerometerJerkMag.std..
frequency_BodyBodyGyroscopeMag.mean..
frequency_BodyBodyGyroscopeMag.std..
frequency_BodyBodyGyroscopeJerkMag.mean..
frequency_BodyBodyGyroscopeJerkMag.std..
