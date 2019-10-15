# Write a function named 'pollutantmean' that calculates the mean of a pollutant (sulfate or nitrate) 
# across a specified list of monitors. The function 'pollutantmean' takes three arguments: 
# 'directory', 'pollutant', and 'id'. 
# Given a vector monitor ID numbers, 'pollutantmean' reads that monitors' 
# particulate matter data from the directory specified in the 'directory' argument and returns 
# the mean of the pollutant across all of the monitors, ignoring any missing values coded as NA. 

# test values
directory <- "./R programming week 2/specdata/"

library("stringr")
id = 2:24

key = paste0(str_pad(id, 3, pad = 0), ".csv")
file.list <- list.files(directory)
pos = which(file.list %in% key)
file.list <- paste0(directory, file.list[pos])

df = do.call(rbind, lapply(file.list,  read.csv))

pollutant = "nitrate"



# tmp <- read.csv(paste0(directory,list.files(directory)[1]))

pollutantmean <- function(directory, pollutant, id = 1:332) {
  
  # make a key from id
  require("stringr")
  key = paste0(str_pad(id, 3, pad = 0), ".csv")
  
  # use key to subset the file list
  file.list <- list.files(directory)
  file.list <- substring(file.list, length(file.list)-4, length(file.list))
  
  # import the files, appending to df
  
  # perform calculations
  
}