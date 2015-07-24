run_analysis <- function(data_url="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
                         )
{
    library(dplyr)
    data_zip <- "temp.zip"
    download.file(data_url, destfile = data_zip)
    unzip(data_zip)
    data_dir <- "./UCI HAR Dataset"
    data_act_names <- read.table(paste0(data_dir,"/activity_labels.txt"),
                                 col.names = c("Number","Name"))
    data_df_colnames <- read.table(paste0(data_dir,"/features.txt"),
                                   col.names = c("Number","Name"))
    col_sel <- sapply(data_df_colnames$Name, 
                      function(x){
                          #length(grep("mean()",x,fixed = TRUE)) > 0 | length(grep("std()",x,fixed = TRUE)) > 0
                          grepl("mean()",x,fixed = TRUE) | grepl("std()",x,fixed = TRUE)
                        })
    
    test_df <- read.table(paste0(data_dir,"/test/X_test.txt"))
    test_subject <- read.table(paste0(data_dir,"/test/subject_test.txt"),
                               col.names = "Subject")
    test_activity <- read.table(paste0(data_dir,"/test/Y_test.txt"),
                                col.names = "Activity")
    test_activity <- sapply(test_activity,
                            function(x){data_act_names[x,"Name"]})
    names(test_df) <- data_df_colnames$Name
    
    test_df <- cbind(test_subject,test_activity,test_df[,col_sel])
    
    train_df <- read.table(paste0(data_dir,"/train/X_train.txt"))
    train_subject <- read.table(paste0(data_dir,"/train/subject_train.txt"),
                               col.names = "Subject")
    train_activity <- read.table(paste0(data_dir,"/train/Y_train.txt"),
                                col.names = "Activity")
    train_activity <- sapply(train_activity,
                            function(x){data_act_names[x,"Name"]})
    names(train_df) <- data_df_colnames$Name
    train_df <- cbind(train_subject,train_activity,train_df[,col_sel])
    df <-rbind(train_df,test_df)
    df <- df[order(df$Subject),]
    df_g <- group_by(df, Subject, Activity)
    df_sum <- summarise_each(df_g,funs(mean))
    write.table(df_sum,"data.txt",row.names = FALSE)
}    