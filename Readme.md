#Overview
run_analysis() script donwloads zip archive from a provided url ([https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata/projectfiles/UCI HAR Dataset.zip) used as a default)
expecting to receive a set of files representing data from "Human Activity Recognition Using Smartphones Dataset" by Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.  

An output of a script is a tidy version of the data saved as data.txt in the current working directory

##Loading Data
Data can be loaded in R with the following command:

read.table("data.txt",header = TRUE)