# Write a function named 'pollutantmean' that calculates the mean of a pollutant (sulfate or nitrate) 
# across a specified list of monitors. The function 'pollutantmean' takes three arguments: 
# 'directory', 'pollutant', and 'id'. 
# Given a vector monitor ID numbers, 'pollutantmean' reads that monitors' 
# particulate matter data from the directory specified in the 'directory' argument and returns 
# the mean of the pollutant across all of the monitors, ignoring any missing values coded as NA. 

pollutantmean <- function(directory, pollutant, id = 1:332) {
  
  # get a list of the files in directory
  file.list <- list.files(directory)
  
  # make a key from id and use it to subset the file list
  require("stringr")
  key = paste0(str_pad(id, 3, pad = 0), ".csv")
  pos = which(file.list %in% key)
  file.list <- paste0(directory, file.list[pos])

  # import the files, appending to df
  df = do.call(rbind, lapply(file.list,  read.csv))
  
  # perform calculations
  mean(df[,pollutant], na.rm = T)
  
}




