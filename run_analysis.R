library(data.table)

x_test <- read.table("UCI HAR Dataset/test/X_test.txt", header = FALSE) 
y_test <- read.table("UCI HAR Dataset/test/y_test.txt", header = FALSE) 
subject_test<- read.table("UCI HAR Dataset/test/subject_test.txt", header = FALSE)

x_train <- read.table("UCI HAR Dataset/train/X_train.txt", header = FALSE) 
y_train <- read.table("UCI HAR Dataset/train/y_train.txt", header = FALSE) 
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt", header = FALSE)

activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt", header = FALSE)
features <- read.table("UCI HAR Dataset/features.txt", header = FALSE) 

colnames(x_test) <- features$V2
test <- cbind(y_test, x_test)
names(test)[names(test)=="V1"] <- "Activity"
test$Activity <- activity_labels[,2][test$Activity]
testfinal <- cbind(subject_test, test)
names(testfinal)[names(testfinal)=="V1"] <- "Subject"

colnames(x_train) <- features$V2
train <- cbind(y_train, x_train)
names(train)[names(train)=="V1"] <- "Activity"
train$Activity <- activity_labels[,2][train$Activity]
trainfinal <- cbind(subject_train, train)
names(trainfinal)[names(trainfinal)=="V1"] <- "Subject"

activitydata <- rbind(testfinal, trainfinal)
activitydata <- activitydata[order(activitydata$Subject),]
activityfilter <- activitydata[, grepl("Subject|Activity|mean|std", names(activitydata))]

activityfinal <- aggregate(activityfilter, by = list(activityfilter$Subject, activityfilter$Activity), FUN = mean)
activityclean <- activityfinal[,c(-3,-4)]
names(activityclean)[names(activityclean)=="Group.1"] <- "Subject"
names(activityclean)[names(activityclean)=="Group.2"] <- "Activity"

write.table(activityclean, data = "course4proj.txt", row.name=FALSE )