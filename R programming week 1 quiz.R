df <- read.csv("hw1_data.csv")
names(df)

# Extract the subset of rows of the data frame where Ozone values are above 31 and Temp values are above 90. What is the mean of Solar.R in this subset?
oz <- df$Ozone > 31
temp <- df$Temp >90
ss <- df[oz & temp,]
mean(ss$Solar.R, na.rm = T)

# or
ss <- df[which(df$Ozone >31 & df$Temp > 90),]

# or
mean(df[which(df$Ozone >31 & df$Temp > 90),]$Solar.R)

# What is the mean of "Temp" when "Month" is equal to 6?
mean(df[which(df$Month == 6),]$Temp)

#What was the maximum ozone value in the month of May (i.e. Month is equal to 5)?
max(df[which(df$Month == 5),]$Ozone, na.rm = T)
