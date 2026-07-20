#################################################
# Script Name: App1_11.R
# Author: Calvin Huggler
# Creation Date: 7/16/2026
# Last Edit Date: 7/16/2026
# Purpose: Data Class Assignment
#################################################

# file = C:/Users/chugg/OneDrive/Desktop/Data Class Files/ Add your next final pathway to set and files


rm(list = ls())  # Clear Enviornment

# Open Tool Chest Librraries
#{
  # library(tidyverse)
  # library(readxl)
  # library(openxlsx)
  # library(ggplot2)
  # library(knitr)
  # library(lubridate)
#}

# Open Tool Chest Scripts as needed removve # symbol
#{ 
 # source("C:/Users/chugg/OneDrive/Desktop/Data Class Files/Tool_Chest_Scripts/Chemistry_Library.R")
 # source("C:/Users/chugg/OneDrive/Desktop/Data Class Files/Tool_Chest_Scripts/Constants_Library.R")
 # source("C:/Users/chugg/OneDrive/Desktop/Data Class Files/Tool_Chest_Scripts/Conversion_Library.R")
 # source("C:/Users/chugg/OneDrive/Desktop/Data Class Files/Tool_Chest_Scripts/Packages_Library.R")
 # source("C:/Users/chugg/OneDrive/Desktop/Data Class Files/Tool_Chest_Scripts/Unicode_Characters_Library.R")
#}

###### Start Code Here ######


weatherData = read.csv(file = "Data Class Files/Class_Data_Sets/twoWeekWeatherData.csv",
                       sep = ",",
                       header = TRUE)

highTemp = weatherData$highTemp
precipitation = weatherData$precipitation
conditions = weatherData$noonCondition
lowTemp = weatherData$lowTemp


# 1) If you set the state to 0 but have negative values
#    you will get 0 as the Highest temprature because 
#    the negative day values will all read as false meaning the 
#    State variable value will never be changed.


# 2) Even Days with low temps of < or = 50 Deg.

evenDays_at_Below50 = 0

for(i in seq(from = 2, length(lowTemp), by = 2 ))
{
    if(lowTemp[i] <= 50) 
      {evenDays_at_Below50 = evenDays_at_Below50 + 1}
}

cat("\nQuestion 2\n")
cat("Days with low temperatures at or below 50:", evenDays_at_Below50, "\n")

# 3) mean of the low temperatures using for loops

lowTempTotal = 0

for(i in 1:length(lowTemp))
  {
  lowTempTotal = lowTempTotal + lowTemp[i]
  }

  lowTempMean = lowTempTotal / length(lowTemp)

cat("\nQueestion 3\n")
cat("the mean of the low tempratures was:", lowTempMean, "\n")

# 4) How many Days had 1inch or more of rain, how many had between 0.1in - 1in of rain or 0.1in or less

percipitation_High = False
percipitation_Med = 0
percipitation_Low = 0

for(i in 1:length(precipitation))
  {
  percipitation_High = 
}

