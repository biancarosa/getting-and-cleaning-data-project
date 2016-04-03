# CodeBook

The original data can be downloaded [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). For further info, you can also read [this](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

## Operations performed

The goal was to merge the train and the test data and make a tidy dataset.
The script `run_analysis.R` does the following:

1. Download the dataset if needed

2. Unzip the dataset if needed

3. Merge the train and test data

4. Extracts only the measurements with the mean and standard deviation

5. Label activities with the `activity_labels.txt` file

6. Replace variable names to make them more descriptive
 
7. Creates a tidy dataset with the average of each variable for each activity and each subject

## Columns

### Identifier
`subject` : ID of the subject (factor)

1-30


`activity` : activity performed (factor)

1 WALKING

2 WALKING_UPSTAIRS

3 WALKING_DOWNSTAIRS

4 SITTING

5 STANDING

6 LAYING

### Measurements
`TimeBodyAccelerometerMean-X`

`TimeBodyAccelerometerMean-Y`

`TimeBodyAccelerometerMean-Z`

`TimeBodyAccelerometerStandardDeviation-X`

`TimeBodyAccelerometerStandardDeviation-Y`

`TimeBodyAccelerometerStandardDeviation-Z`

`TimeGravityAccelerometerMean-X`

`TimeGravityAccelerometerMean-Y`

`TimeGravityAccelerometerMean-Z`

`TimeGravityAccelerometerStandardDeviation-X`

`TimeGravityAccelerometerStandardDeviation-Y`

`TimeGravityAccelerometerStandardDeviation-Z`

`TimeBodyAccelerometerJerkMean-X`

`TimeBodyAccelerometerJerkMean-Y`

`TimeBodyAccelerometerJerkMean-Z`

`TimeBodyAccelerometerJerkStandardDeviation-X`

`TimeBodyAccelerometerJerkStandardDeviation-Y`

`TimeBodyAccelerometerJerkStandardDeviation-Z`

`TimeBodyGyroscopeMean-X`

`TimeBodyGyroscopeMean-Y`

`TimeBodyGyroscopeMean-Z`

`TimeBodyGyroscopeStandardDeviation-X`

`TimeBodyGyroscopeStandardDeviation-Y`

`TimeBodyGyroscopeStandardDeviation-Z`

`TimeBodyGyroscopeJerkMean-X`

`TimeBodyGyroscopeJerkMean-Y`

`TimeBodyGyroscopeJerkMean-Z`

`TimeBodyGyroscopeJerkStandardDeviation-X`

`TimeBodyGyroscopeJerkStandardDeviation-Y`

`TimeBodyGyroscopeJerkStandardDeviation-Z`

`TimeBodyAccelerometerMagnitudeMean`

`TimeBodyAccelerometerMagnitudeStandardDeviation`

`TimeGravityAccelerometerMagnitudeMean`

`TimeGravityAccelerometerMagnitudeStandardDeviation`

`TimeBodyAccelerometerJerkMagnitudeMean`

`TimeBodyAccelerometerJerkMagnitudeStandardDeviation`

`TimeBodyGyroscopeMagnitudeMean`

`TimeBodyGyroscopeMagnitudeStandardDeviation`

`TimeBodyGyroscopeJerkMagnitudeMean`

`TimeBodyGyroscopeJerkMagnitudeStandardDeviation`

`FrequencyBodyAccelerometerMean-X`

`FrequencyBodyAccelerometerMean-Y`

`FrequencyBodyAccelerometerMean-Z`

`FrequencyBodyAccelerometerStandardDeviation-X`

`FrequencyBodyAccelerometerStandardDeviation-Y`

`FrequencyBodyAccelerometerStandardDeviation-Z`

`FrequencyBodyAccelerometerJerkMean-X`

`FrequencyBodyAccelerometerJerkMean-Y`

`FrequencyBodyAccelerometerJerkMean-Z`

`FrequencyBodyAccelerometerJerkStandardDeviation-X`

`FrequencyBodyAccelerometerJerkStandardDeviation-Y`

`FrequencyBodyAccelerometerJerkStandardDeviation-Z`

`FrequencyBodyGyroscopeMean-X`

`FrequencyBodyGyroscopeMean-Y`

`FrequencyBodyGyroscopeMean-Z`

`FrequencyBodyGyroscopeStandardDeviation-X`

`FrequencyBodyGyroscopeStandardDeviation-Y`

`FrequencyBodyGyroscopeStandardDeviation-Z`

`FrequencyBodyAccelerometerMagnitudeMean`

`FrequencyBodyAccelerometerMagnitudeStandardDeviation`

`FrequencyBodyAccelerometerJerkMagnitudeMean`

`FrequencyBodyAccelerometerJerkMagnitudeStandardDeviation`

`FrequencyBodyGyroscopeMagnitudeMean`

`FrequencyBodyGyroscopeMagnitudeStandardDeviation`

`FrequencyBodyGyroscopeJerkMagnitudeMean`

`FrequencyBodyGyroscopeJerkMagnitudeStandardDeviation`
