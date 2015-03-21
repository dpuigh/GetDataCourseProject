# Code Book

Data:

Data set and attribute information can be obtained from the source site for "Human Activity Recognition Using Smartphones Data Set":
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

From the site above, the following is provided for each record in the data set:
* Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
* Triaxial Angular velocity from the gyroscope. 
* A 561-feature vector with time and frequency domain variables. 
* Its activity label. 
* An identifier of the subject who carried out the experiment.

The testing and traing data sets were obtained from the following zip file:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Codebook:

The X_test.txt and X_train.txt started with 561 feature variables. The set of variables estimated from the signals corresponding to mean value and standard deviation were selected as containing "mean()" or "std()", respectively, as specified in features.txt. After this, there were 66 total variables: 33 mean and 33 standard deviation variables. The original variable names (e.g. tBodyAcc-mean()-X) were made more descriptive and were made to follow a given structure: (1).(2).(3).(4).(5)

* frequency or time domain
 (1) = (frequency|time)
* Body or gravitational motion components
 (2) = (Body|Gravity)
* Accelerometer or gyroscope sensor (jerk)
 (3) = (Accerlation|Acceleration.Jerk|Gyroscope|Gyroscope.Jerk)
* Axial measurement (direction) or total magnitude
 (4) = (X|Y|Z|Magnitue)
* Measurement type: mean or standard deviation
 (5) = (mean|std)

These are the variables used to group the other measurements:
* Subject = An identifier of the subject who performed the activity. Its range is from 1 to 30.
* Activity = One of six different activity labels: Walking, Walking Up, Walking Down, Sitting, Standing, or Laying.

Below are the 66 variables over which averages were calculated for each activity and each subject. All variable were normalized and bounded within [-1,1]. Therefore, they are all dimensionless.
* time.Body.Acceleration.X.mean = Average of time domain variable of body motion acceleration from accelerometer in the X direction measurement of the mean.
* time.Body.Acceleration.Y.mean = Average of time domain variable of body motion acceleration from accelerometer in the Y direction measurement of the mean.
* time.Body.Acceleration.Z.mean = Average of time domain variable of body motion acceleration from accelerometer in the Z direction measurement of the mean.
* time.Body.Acceleration.X.std = Average of time domain variable of body motion acceleration from accelerometer in the X direction measurement of the standard deviation.
* time.Body.Acceleration.Y.std = Average of time domain variable of body motion acceleration from accelerometer in the Y direction measurement of the standard deviation.
* time.Body.Acceleration.Z.std = Average of time domain variable of body motion acceleration from accelerometer in the Z direction measurement of the standard deviation.
* time.Gravity.Acceleration.X.mean = Average of time domain variable of gravity motion acceleration from accelerometer in the X direction measurement of the mean.
* time.Gravity.Acceleration.Y.mean = Average of time domain variable of gravity motion acceleration from accelerometer in the Y direction measurement of the mean.
* time.Gravity.Acceleration.Z.mean = Average of time domain variable of gravity motion acceleration from accelerometer in the Z direction measurement of the mean.
* time.Gravity.Acceleration.X.std = Average of time domain variable of gravity motion acceleration from accelerometer in the X direction measurement of the standard deviation.
* time.Gravity.Acceleration.Y.std = Average of time domain variable of gravity motion acceleration from accelerometer in the Y direction measurement of the standard deviation.
* time.Gravity.Acceleration.Z.std = Average of time domain variable of gravity motion acceleration from accelerometer in the Z direction measurement of the standard deviation.
* time.Body.Acceleration.Jerk.X.mean = Average of time domain variable of body motion acceleration from accelerometer jerk in the X direction measurement of the mean.
* time.Body.Acceleration.Jerk.Y.mean = Average of time domain variable of body motion acceleration from accelerometer jerk in the Y direction measurement of the mean.
* time.Body.Acceleration.Jerk.Z.mean = Average of time domain variable of body motion acceleration from accelerometer jerk in the Z direction measurement of the mean.
* time.Body.Acceleration.Jerk.X.std = Average of time domain variable of body motion acceleration from accelerometer jerk in the X direction measurement of the standard deviation.
* time.Body.Acceleration.Jerk.Y.std = Average of time domain variable of body motion acceleration from accelerometer jerk in the Y direction measurement of the standard deviation.
* time.Body.Acceleration.Jerk.Z.std = Average of time domain variable of body motion acceleration from accelerometer jerk in the Z direction measurement of the standard deviation.
* time.Body.Gyroscope.X.mean = Average of time domain variable of body motion angular velocity from gryoscope in the X direction measurement of the mean.
* time.Body.Gyroscope.Y.mean = Average of time domain variable of body motion angular velocity from gryoscope in the Y direction measurement of the mean.
* time.Body.Gyroscope.Z.mean = Average of time domain variable of body motion angular velocity from gryoscope in the Z direction measurement of the mean.
* time.Body.Gyroscope.X.std = Average of time domain variable of body motion angular velocity from gryoscope in the X direction measurement of the standard deviation.
* time.Body.Gyroscope.Y.std = Average of time domain variable of body motion angular velocity from gryoscope in the Y direction measurement of the standard deviation.
* time.Body.Gyroscope.Z.std = Average of time domain variable of body motion angular velocity from gryoscope in the Z direction measurement of the standard deviation.
* time.Body.Gyroscope.Jerk.X.mean = Average of time domain variable of body motion angular velocity from gryoscope jerk in the X direction measurement of the mean.
* time.Body.Gyroscope.Jerk.Y.mean = Average of time domain variable of body motion angular velocity from gryoscope jerk in the Y direction measurement of the mean.
* time.Body.Gyroscope.Jerk.Z.mean = Average of time domain variable of body motion angular velocity from gryoscope jerk in the Z direction measurement of the mean.
* time.Body.Gyroscope.Jerk.X.std = Average of time domain variable of body motion angular velocity from gryoscope jerk in the X direction measurement of the standard deviation.
* time.Body.Gyroscope.Jerk.Y.std = Average of time domain variable of body motion angular velocity from gryoscope jerk in the Y direction measurement of the standard deviation.
* time.Body.Gyroscope.Jerk.Z.std = Average of time domain variable of body motion angular velocity from gryoscope jerk in the Z direction measurement of the standard deviation.
* time.Body.Acceleration.Magnitude.mean = Average of time domain variable of body motion acceleration from accelerometer magnitude measurement of the mean.
* time.Body.Acceleration.Magnitude.std = Average of time domain variable of body motion acceleration from accelerometer magnitude measurement of the standard deviation.
* time.Gravity.Acceleration.Magnitude.mean = Average of time domain variable of gravity motion acceleration from accelerometer magnitude measurement of the mean.
* time.Gravity.Acceleration.Magnitude.std = Average of time domain variable of gravity motion acceleration from accelerometer magnitude measurement of the standard deviation.
* time.Body.Acceleration.Jerk.Magnitude.mean = Average of time domain variable of body motion acceleration from accelerometer jerk magnitude measurement of the mean.
* time.Body.Acceleration.Jerk.Magnitude.std = Average of time domain variable of body motion acceleration from accelerometer jerk magnitude measurement of the standard deviation.
* time.Body.Gyroscope.Magnitude.mean = Average of time domain variable of body motion angular velocity from gryoscope magnitude measurement of the mean.
* time.Body.Gyroscope.Magnitude.std = Average of time domain variable of body motion angular velocity from gryoscope magnitude measurement of the standard deviation.
* time.Body.Gyroscope.Jerk.Magnitude.mean = Average of time domain variable of body motion angular velocity from gryoscope jerk magnitude measurement of the mean.
* time.Body.Gyroscope.Jerk.Magnitude.std = Average of time domain variable of body motion angular velocity from gryoscope jerk magnitude measurement of the standard deviation.
* frequency.Body.Acceleration.X.mean = Average of frequency domain variable of body motion acceleration from accelerometer in the X direction measurement of the mean.
* frequency.Body.Acceleration.Y.mean = Average of frequency domain variable of body motion acceleration from accelerometer in the Y direction measurement of the mean.
* frequency.Body.Acceleration.Z.mean = Average of frequency domain variable of body motion acceleration from accelerometer in the Z direction measurement of the mean.
* frequency.Body.Acceleration.X.std = Average of frequency domain variable of body motion acceleration from accelerometer in the X direction measurement of the standard deviation.
* frequency.Body.Acceleration.Y.std = Average of frequency domain variable of body motion acceleration from accelerometer in the Y direction measurement of the standard deviation.
* frequency.Body.Acceleration.Z.std = Average of frequency domain variable of body motion acceleration from accelerometer in the Z direction measurement of the standard deviation.
* frequency.Body.Acceleration.Jerk.X.mean = Average of frequency domain variable of body motion acceleration from accelerometer jerk in the X direction measurement of the mean.
* frequency.Body.Acceleration.Jerk.Y.mean = Average of frequency domain variable of body motion acceleration from accelerometer jerk in the Y direction measurement of the mean.
* frequency.Body.Acceleration.Jerk.Z.mean = Average of frequency domain variable of body motion acceleration from accelerometer jerk in the Z direction measurement of the mean.
* frequency.Body.Acceleration.Jerk.X.std = Average of frequency domain variable of body motion acceleration from accelerometer jerk in the X direction measurement of the standard deviation.
* frequency.Body.Acceleration.Jerk.Y.std = Average of frequency domain variable of body motion acceleration from accelerometer jerk in the Y direction measurement of the standard deviation.
* frequency.Body.Acceleration.Jerk.Z.std = Average of frequency domain variable of body motion acceleration from accelerometer jerk in the Z direction measurement of the standard deviation.
* frequency.Body.Gyroscope.X.mean = Average of frequency domain variable of body motion angular velocity from gryoscope in the X direction measurement of the mean.
* frequency.Body.Gyroscope.Y.mean = Average of frequency domain variable of body motion angular velocity from gryoscope in the Y direction measurement of the mean.
* frequency.Body.Gyroscope.Z.mean = Average of frequency domain variable of body motion angular velocity from gryoscope in the Z direction measurement of the mean.
* frequency.Body.Gyroscope.X.std = Average of frequency domain variable of body motion angular velocity from gryoscope in the X direction measurement of the standard deviation.
* frequency.Body.Gyroscope.Y.std = Average of frequency domain variable of body motion angular velocity from gryoscope in the Y direction measurement of the standard deviation.
* frequency.Body.Gyroscope.Z.std = Average of frequency domain variable of body motion angular velocity from gryoscope in the Z direction measurement of the standard deviation.
* frequency.Body.Acceleration.Magnitude.mean = Average of frequency domain variable of body motion acceleration from accelerometer magnitude measurement of the mean.
* frequency.Body.Acceleration.Magnitude.std = Average of frequency domain variable of body motion acceleration from accelerometer magnitude measurement of the standard deviation.
* frequency.Body.Acceleration.Jerk.Magnitude.mean = Average of frequency domain variable of body motion acceleration from accelerometer jerk magnitude measurement of the mean.
* frequency.Body.Acceleration.Jerk.Magnitude.std = Average of frequency domain variable of body motion acceleration from accelerometer jerk magnitude measurement of the standard deviation.
* frequency.Body.Gyroscope.Magnitude.mean = Average of frequency domain variable of body motion angular velocity from gryoscope magnitude measurement of the mean.
* frequency.Body.Gyroscope.Magnitude.std = Average of frequency domain variable of body motion angular velocity from gryoscope magnitude measurement of the standard deviation.
* frequency.Body.Gyroscope.Jerk.Magnitude.mean = Average of frequency domain variable of body motion angular velocity from gryoscope jerk magnitude measurement of the mean.
* frequency.Body.Gyroscope.Jerk.Magnitude.std = Average of frequency domain variable of body motion angular velocity from gryoscope jerk magnitude measurement of the standard deviation.

