#
# 1 - Merge training and test sets into one data set
#

# 1.1 - loadFile() use to load all data text files
# all parameters have explicit default
loadFile <- function(dir="data/UCI_HAR_Dataset", set="test", file="X", sep="") {
  myFile <- paste(paste(file, set, sep="_"), ".txt", sep="")
  path2File <- paste(dir, set, myFile, sep="/")
  # print(paste("file:", path2File, sep=" "))
  read.table(path2File, sep=sep, strip.white=TRUE, dec = ".", fill=TRUE)
}

# 1.2 - Load and combine columns from complementary files
# (subject_(test|training).txt and Y_(test|training).txt
# Return new dataframe (with 2 additional columns)
loadAndCombineDS <- function(dir="data/UCI_HAR_Dataset", set="test") {
  dfr <- loadFile(dir=dir, set=set)
  dfr_subject <- loadFile(dir, file='subject', set=set)
  dfr_y <- loadFile(dir, file='y', set=set)
  cbind(dfr_subject, dfr_y, dfr)
}

# 1.3 Combine the 2 given dataset train and test into one
# assuming same number of coloumns
# Return new dataframe - dim: 10299 x 563
combineDS <- function(dfr_train, dfr_test) {
  # TODO: check dim of each dataframe
  rbind(dfr_train, dfr_test)
}

# Finally - actually load and merge the train and test sets
performStep1 <- function(dir) {
  print("1 - Loading and combining all files to single dataset")
  dfr <- combineDS(loadAndCombineDS(dir=dir, set="train"),
                   loadAndCombineDS(dir=dir, set="test"))
  printDimHlpr(dfr) # [10299 x 563]
  return(dfr)
}


#
# 2 - Extract mean and standard deviation measurment only
#

# 2.1 - Read the features - dim: 561 x 1
loadLabels <- function(dir="data/UCI_HAR_Dataset", file="features.txt", sep="",
                       colClasses=c("NULL", "character")) {
  path2File <-paste(dir, file, sep="/")
  read.table(path2File, sep=sep, strip.white=TRUE, colClasses=colClasses)
}

# 2.2 - Extract from features those whose names match -mean() -meanFreq() or -std()
# Return vector of indexes, length 79 (given the following regular expression)
filterFeatures <- function(dfr_features) {
    as.vector(grep("-(mean.*|std)\\(\\)", dfr_features[, 1], ignore.case = TRUE,
                   perl = TRUE, value = FALSE))
}

# 2.3 - Select the required columns from dataset (dataframe)
# as we need to keep to 2 first columns (Subject. Activity), need to offset vix
# (vector of indexes) by 2.
# Return modified dataframe  - dim: 10299 x 81
applyFilterDS <- function(dfr, vix) {
  dfr[, c(1:2, sapply(vix, function(ix) {ix + 2}))]
}

# 2.4 - Combine the 3 functions (2.1, 2.2, 2.3)
performStep2 <- function(dfr, dir="data/UCI_HAR_Dataset", withWrite=FALSE) {
  print("2a - Load the features")
  dfr_features <- loadLabels(dir=dir)
  printDimHlpr(dfr_features)
  vix <- filterFeatures(dfr_features)

  printDimHlpr(vix)
  print("2b - Get the subset Mean/Std and keep 2 first columns")
  dfr <- applyFilterDS(dfr, vix)
  printDimHlpr(dfr)
  if (withWrite) {
    write.table(dfr, "raw_data_10299x81.txt", sep=";", row.names=FALSE)
  }
  return(list(dfr, dfr_features, vix))
}


#
# 3 - Use descriptive activity names
#

# Replace activity index 2nd column of given dataframe dfr with activity names
# from file activity_labels (loaded into dfr_activities).
# Also put activity names in lower case
# Return modified dataframe - dim(unchanged): 10299 x 81
setActivityName <- function(dfr, dfr_activities) {
  fun <- function(ix) {tolower(dfr_activities[ix, 1])}
  dfr[, 2] <- sapply(dfr[, 2], fun)
  return(dfr)
}

# Finally, load and apply...
performStep3 <- function(dfr, dir="data/UCI_HAR_Dataset", withWrite=FALSE) {
  print("3 - Replace 2nd column with activity names (lowercase them)")
  dfr_activities <- loadLabels(dir=dir, file="activity_labels.txt")
  dfr <- setActivityName(dfr, dfr_activities)
  printDimHlpr(dfr)
  if (withWrite) {
    write.table(dfr, "raw_data_activity_10299x81.txt", sep=";", row.names=FALSE)
  }
  return(dfr)
}


#
# 4 - Appropriately labels the data set with descriptive variable names

# 4.1 - Renaming df colnames using the features related to mean and standard deviation
# (as recorded in vindexes, vector of indexes) clean up colnames
setLabelOnDS <- function(dfr, dfr_features, vindexes) {
  colnames(dfr) <- c("subject", "activity", dfr_features[,1][vindexes])
  dfr
}

# 4.2 - Apply a series of substitutions to "clean up" names
# Return new column names
cleanLabelsForDS <- function(colNames) {
  # definition / specification
  transformLst <- list(
    list("-([XYZ])$", ".\\1"), # remove dash before X, Y or Z
    list("[-_()]", "", 'g'),   # remove special char.
    list("^t", "time"),        # explicit t as time
    list("^f", "freq"),        # explicit f as freq
    list("std", capitalize("std")),
    list("mean", capitalize("mean")),
    list("BodyBody", "Body")   # Eliminate double Body
  )

  # apply substitutions using sub or gsub (as per above specification)
  for (transf in transformLst) {
    if (length(transf) == 2 ||
        (length(transf) == 3 && as.character(transf[3]) == '')) {
      colNames <- sub(transf[1], transf[2], colNames, perl=TRUE)
    }
    else if (length(transf) == 3 && as.character(transf[3]) == 'g') {
      colNames <- gsub(transf[1], transf[2], colNames, perl=TRUE)
    }
    else {
      # TODO: error
    }
  }
  sapply(colNames, capitalize, USE.NAMES=FALSE)
}

# Finally set and clean up the labels
performStep4 <- function(dfr, dfr_features, vix, withWrite=FALSE) {
  print("4 - Name the columns of dataset (in order) and tidy them up")
  dfr <- setLabelOnDS(dfr, dfr_features, vix)
  printDimHlpr(dfr)
  colNames <- cleanLabelsForDS(colnames(dfr))
  colnames(dfr) <- colNames
  if (withWrite) {
    write.table(dfr, "tidy_data_10299x81.txt", sep=";", row.names=FALSE)
  }
  return(dfr)
}


#
# 5 - Creates a second, independent tidy data set with the average of each variable

# Switch to dplyr, create a data table and create pipeline of transformations
# Note: na.rm options was explicited (not strictly required in this case)
summarizeData <- function(df) {
  library(dplyr)

  mytab <- tibble::as.tibble(df) # conversion
  mytab %>%
    group_by(Subject, Activity) %>%
    summarize_all(funs(mean), na.rm=TRUE)
}

# Finally transform, summarize and save
performStep5 <- function(dfr, fname="tidy_data_summary_180x81.txt") {
  print("5 - Create a second, independent tidy data")
  mytab <- summarizeData(dfr)
  printDimHlpr(mytab)
  write.table(mytab, fname, sep=";", row.names=FALSE)
  return(mytab)
}


#
# Helper functions

# Capitalize names (from ?chartr usage - simple capitalize version), used in part 4
capitalize <- function(x) {
  s <- strsplit(x, " ")[[1]]
  paste(toupper(substring(s, 1, 1)),
        substring(s, 2),
        sep="", collapse=" ")
}

# Print dim or length
printDimHlpr <- function(obj) {
  if (class(obj)[[1]] == "data.frame" || class(obj)[[1]] == "grouped_df") {
    d <- paste(dim(obj), collapse="x")
    s <- paste("dim dataset:", d, sep=" ")
    print(s)
  }
  else if (class(obj) == "vector" || class(obj) == "list") {
    s <- paste("Length:", length(obj), sep=" ")
    print(s)
  }
  else {
    # TODO...
  }
}



#
# Main - the whole transformation
#
if (!exists("mydf")) {
  dir <- "data/UCI_HAR_Dataset" # this can changed...

  mydf <- performStep1(dir)

  mylist <- performStep2(mydf, dir=dir)
  # unpack the returned parameters, we need them for step 4:
  mydf <- mylist[[1]]
  dfr_features <-  mylist[[2]]
  vix <-  mylist[[3]]

  mydf <- performStep3(mydf, dir=dir)

  mydf <- performStep4(mydf, dfr_features, vix)

  mytab <- performStep5(mydf)

  # do something on mytab if required
}
