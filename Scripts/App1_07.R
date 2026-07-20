#################################################
#Script Name: App1_07.R
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
   

### Read in the weather data
weatherData = read.csv(file = "Data/twoWeekWeatherData.csv",
                       sep = ",",
                       header = TRUE)

# A. Line 47 rewritten so it is under 85 characters

highTemps = weatherData$highTemp
lowTemps = weatherData$lowTemp

cat("On the 4th day the high temperature was",
    highTemps[4],
    "and the low temperature was",
    lowTemps[4], "\n")


# B.)

# The ... argument means that c() can accept any number of
# values or vectors and combine them into a single vector.

# C.) Output to the Console using ONE cat()

cat(
  "11th day:", weatherData$date[11],
  "Precipitation:", weatherData$precipitation[11], "\n",

  "Difference in precipitation between days 3 and 4:",
  weatherData$precipitation[3] - weatherData$precipitation[4], "\n",

  "Every 3rd day's precipitation:",
  weatherData$precipitation[seq(from = 3, by = 3, to = 12)], "\n",

  "Precipitation for days 12, 9, and 4:",
  weatherData$precipitation[c(12, 9, 4)], "\n",

  "Total precipitation for the first 10 days:",
  weatherData$precipitation[1] +
  weatherData$precipitation[2] +
  weatherData$precipitation[3] +
  weatherData$precipitation[4] +
  weatherData$precipitation[5] +
  weatherData$precipitation[6] +
  weatherData$precipitation[7] +
  weatherData$precipitation[8] +
  weatherData$precipitation[9] +
  weatherData$precipitation[10],
  "\n"
)

# D. Output the same information to output.tx

cat(
  "11th day:", weatherData$date[11],
  "Precipitation:", weatherData$precipitation[11], "\n",

  "Difference in precipitation between days 3 and 4:",
  weatherData$precipitation[3] - weatherData$precipitation[4], "\n",

  "Every 3rd day's precipitation:",
  weatherData$precipitation[seq(from = 3, by = 3, to = 12)], "\n",

  "Precipitation for days 12, 9, and 4:",
  weatherData$precipitation[c(12, 9, 4)], "\n",

  "Total precipitation for the first 10 days:",
  weatherData$precipitation[1] +
  weatherData$precipitation[2] +
  weatherData$precipitation[3] +
  weatherData$precipitation[4] +
  weatherData$precipitation[5] +
  weatherData$precipitation[6] +
  weatherData$precipitation[7] +
  weatherData$precipitation[8] +
  weatherData$precipitation[9] +
  weatherData$precipitation[10],
  "\n",
  file = "Text Files/1_07_App_output.txt",
  append = FALSE)

# E. Append your name and three Unicode characters

cat("\n Calvin Huggler \u2605 \u2713 \u263A\n",
    file = "Text Files/1_07_App_output.txt",
    append = TRUE)