#################################################
#Script Name: App1_08.R
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
#}
  ###### Start Code Here ######
   
# Pull File 


weatherData = read.csv( file = "Data/twoWeekWeatherData.csv",
                        sep = ",",
                       header = TRUE)

# Creating easy V's

dates =weatherData$date
highTemps = weatherData$highTemp
lowTemps = weatherData$lowTemp
precipitation = weatherData$precipitation

# A.) First Five Dayswith x > 1 inch of precipitation

cat("Part A\n")
if( precipitation[1] >=1) {
  cat(dates[1], "- High:", highTemps[1],
    "Low:", lowTemps[1], "\n")
}

if( precipitation[2] >=1) {
  cat(dates[2], "- High:", highTemps[2],
    "Low:", lowTemps[2], "\n")
}

if( precipitation[3] >=1) {
  cat(dates[3], "- High:", highTemps[3],
    "Low:", lowTemps[3], "\n")
}

if( precipitation[4] >=1) {
  cat(dates[4], "- High:", highTemps[4],
    "Low:", lowTemps[4], "\n")
}

if( precipitation[5] >=1) {
  cat(dates[5], "- High:", highTemps[5],
    "Low:", lowTemps[5], "\n")
}

# B.) Last five days with low temp x < 40 

cat("\nPart B\n")

if(lowTemps[10] <=40) {
  cat(dates[10], "\n")
}

if(lowTemps[11] <=40) {
  cat(dates[11], "\n")
}

if(lowTemps[12] <=40) {
  cat(dates[12], "\n")
}

if(lowTemps[13] <=40) {
  cat(dates[13], "\n")
}

if(lowTemps[14] <=40) {
  cat(dates[14], "\n")
}

# C.) Random Temps 40 - 80

randomTemp = sample(x=40:80, size = 1) 
cat("\nRandom Temperature:", randomTemp, "\n")

# D.) Random weather Condition

weatherCondition = sample(
  x = c("Cloudy", "Sunny", "Rainy", "Foggy"), size = 1)
cat( "Random Weather:", weatherCondition, "\n")

# E. Nested If() Statments

cat("\nPart E\n")

if(randomTemp >= 60) {

  if (weatherCondition == "Sunny") {
    cat( "The weather is sunny an warm. \n")
  } else { 
    cat( "The weather is warm but not sunny.\n")
  }

} else {

  if ( weatherCondition == "Sunny") {
    cat( "The weather is  sunny but cool.\n")
  } else { 
    cat( "The weather is cool and not sunny. \n")
  }

}

