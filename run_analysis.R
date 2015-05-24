#                         STEP 1
# Merges the training and the test sets to create one data set
# -----------------------------------------------------------

# TRAIN DATA
train_data <- read.table("./data/train/X_train.txt")
train_label <- read.table("./data/train/y_train.txt")
train_subject <- read.table("./data/train/subject_train.txt")

# TEST DATA
test_data <- read.table("./data/test/X_test.txt")
test_label <- read.table("./data/test/y_test.txt") 
test_subject <- read.table("./data/test/subject_test.txt")

# JOIN DATA
join_data <- rbind(train_data, test_data)
join_label <- rbind(train_label, test_label)
join_subject <- rbind(train_subject, test_subject)


#                         STEP 2
# Extracts only the measurements on the mean and standard deviation for each measurement
# -----------------------------------------------------------

features <- read.table("./data/features.txt")
mean_std <- grep("mean\\(\\)|std\\(\\)", features[, 2])
join_data <- join_data[, mean_std]

#                         STEP 3
# Uses descriptive activity names to name the activities in the data set
# -----------------------------------------------------------

activity <- read.table("./data/activity_labels.txt")
activity[, 2] <- tolower(gsub("_", "", activity[, 2]))
substr(activity[2, 2], 8, 8) <- toupper(substr(activity[2, 2], 8, 8))
substr(activity[3, 2], 8, 8) <- toupper(substr(activity[3, 2], 8, 8))
activity_label <- activity[join_label[, 1], 2]
join_label[, 1] <- activity_label
names(join_label) <- "activity"

#                         STEP 4
# Appropriately labels the data set with descriptive variable names
# -----------------------------------------------------------

names(join_subject) <- "subject"
cleaned_data <- cbind(join_subject, join_label, join_data)
write.table(cleaned_data, "merged_data.txt")


#                         STEP 5
# From the data set in step 4, creates a second, independent
# tidy data set with the average of each variable for each activity and each subject
# -----------------------------------------------------------







