# run to create the wd for Wk2
# dir.create("R programming week 2")

# create the required directory for the data files
dir.create("./R programming week 2/specdata")

# unzip the zip file provided at https://d396qusza40orc.cloudfront.net/rprog%2Fdata%2Fspecdata.zip
  # extract the files to the directory created above
unzip("rprog_data_specdata.zip", exdir = "./R programming week 2")
