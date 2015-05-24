#                         STEP 1
#       Merge TRAIN & TEST :: DATA -> LABEL -> SUBJECT
# -----------------------------------------------------------

#                       TRAIN DATA
train_data <- read.table("./data/train/X_train.txt")
train_label <- read.table("./data/train/y_train.txt")
train_subject <- read.table("./data/train/subject_train.txt")

#                       TEST DATA
test_data <- read.table("./data/test/X_test.txt")
test_label <- read.table("./data/test/y_test.txt") 
test_subject <- read.table("./data/test/subject_test.txt")

#                       JOIN DATA
join_data <- rbind(train_data, test_data)
join_label <- rbind(train_label, test_label)
join_subject <- rbind(train_subject, test_subject)


#                         STEP 2
# -----------------------------------------------------------

#                       ?


#                         STEP 3
# -----------------------------------------------------------

#                       ?

#                         STEP 4
# -----------------------------------------------------------

#                       ?


#                         STEP 5
# -----------------------------------------------------------

#                       ?





