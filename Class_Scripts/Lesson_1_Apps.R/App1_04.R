#################################################
#Script Name: App1_04.R
# Author: Calvin Huggler
# Cration Date: --
# Last Edit Date: 7/16/26
# Purpose: Data Class Assignment
#################################################
rm(list = ls())  # Clear Enviornment

# Open Tool Chest Librraries
{
  library(tidyverse)
  library(readxl)
  library(openxlsx)
  library(ggplot2)
  library(knitr)
  library(lubridate)}

# Open Tool Chest Scripts as needed removve # symbol
#{ 
  # source("Tool_Chest_Scripts/Chemistry_Library.R")
  # source("Tool_Chest_Scripts/Constants_Library.R")
  # source("Tool_Chest_Scripts/Conversion_Library.R")
  # source("Tool_Chest_Scripts/Packages_Library.R")
  # source("Tool_Chest_Scripts/Unicode_Characters_Library.R")



# A) Get the data from the twoWeekWeatherData CSV file
weatherData =read.csv(file="Class_Data_sets/twoWeekWeatherData.csv", 
                       sep=",",
                       header=TRUE);  

# B) Sequencing
sequence_1 = seq(13, -7, -4)
print(sequence_1)

# C) Subsetting
precipitation= weatherData$precipitation
lowtemp= weatherData$lowTemp

# Save the 4th value of precipitation to a variable
precipitation_val4a = weatherData[4,4]
precipitation_val4b = weatherData$precipitation[4]
precipitation_val4c = weatherData[4,"precipitation"]
print(precipitation_val4a,precipitation_val4b,precipitation_val4c)

#Save the 9th, 12th, 5th, and 1st values of lowTemp to one variable (in that order)
lowtemps_91251 = lowtemp[c(9,12,5,1)]
print(lowtemps_91251)

#Create a variable that holds the precipitation for the last 5 days (of the 14 days).
precipitation_five_day_forcast = precipitation[c(10:14)]
print(precipitation_five_day_forcast)

#Create a variable that holds the lowTemp for the days 12 down to 6.
lowtemp_D12_D6 = lowtemp[c(12:6)]
print(lowtemp_D12_D6)

#Create a variable that holds the first 3 days and last 3 days of precipitation
precipitation_3x3 = precipitation[c(1:3,12:14)]
print(precipitation_3x3)
#D) Negative subsetting:#Subset precipitation using the sequence c(-1,-3,-5). Explain in comments what happened.
precipitation_neg = precipitation[c(-1,-3,-5)]
print(precipitation_neg)

 # This code is using negitive indecxing to exclude the 1st, 3rd, and 5th value from the set

#E) Vector Math:Convert the precipitation column from inches to centimeters (2.54cm = 1in).
precipitation_cm = round((precipitation*2.54),3)
print(precipitation_cm)
#F) Opening Data Frames:
dowJonesData = read.csv(file='C:/Users/chugg/OneDrive/Desktop/Data Class Files/Class_Data_sets/DowJones1980_2012.csv',
        header = FALSE,
        sep = " ")
par(bg= "black")

par(fg= "white")
plot(dowJonesData$V2,
  main = "Dow Jones Index Fund Data 1980-2012", 
  xlab = "Observation", 
  ylab = "Index Fund Value",
  col = "deepskyblue1",
  lwd = 3,
  pch = 18,
  cex = 1.5,
  cex.lab = 1.2,
  cex.main = 1.5,
  cex.axis = 1.1,
  col.main = "white",
  col.axis = "white",
  col.lab = "white",)

