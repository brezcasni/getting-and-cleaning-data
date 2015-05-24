Getting and Cleaning Data Course Project
This file describes how run_analysis.R script works.

Unzip the data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip and rename the extracted folder to "data". Folder "data" and file "run_analysis.R" are in the same working directory.

Open RStudio and source("run_analysis.R").

There are two output files:
	- merged_data.txt
	- data_with_means.txt

In RStudio do:
	data <- read.table("data_with_means.txt")