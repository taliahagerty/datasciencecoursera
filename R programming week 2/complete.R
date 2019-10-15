# Write a function that reads a directory full of files and 
# reports the number of completely observed cases in each data file. 
# The function should return a data frame where 
# the first column is the name of the file 
# and the second column is the number of complete cases

# test values
id = c(5,17,236)

complete <- function(directory, id = 1:332){
  # get a list of the files in directory
  file.list <- list.files(directory)
  
  # make a key from id and use it to subset the file list
  require("stringr")
  key = paste0(str_pad(id, 3, pad = 0), ".csv")
  pos = which(file.list %in% key)
  file.list <- paste0(directory, file.list[pos])
  
  # import the files, appending to df
  df = do.call(rbind, lapply(file.list,  read.csv))
  
  # match the col names in the assignment
  names(df) <- tolower(names(df))
  
  # count the complete cases
  require("dplyr")
  tmp <- df %>%
    filter(complete.cases(.)) %>%
    count(id) %>%
    dplyr::rename(nobs = id) %>%
    select(id, nobs)
  
}