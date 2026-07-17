#################################################
#Script Name: App1_09.R
# Author: Calvin Huggler
# Cration Date: 7/04/2026
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
   

# A.) the fourth condition (hightTemps[3]  40) only checks the values between 41 and 50 because all of the 
# values greater then 50 have alreadyy been caught 
# by the previous if and else if conditions. if the exicution reaches this condistion
# we already know the alue is 50 or less

# B.) an if else if structure is eaiser for finding errors becasues on the 
# condidtion can be true. if a condition is met, the 
# reamainig condditions are skipped
# this makes it eas to determin which catagory
# a values belongs too an prevents multiple outputs for the same value.

# C.) Random Letter grade

grade = sample(c( "A", "B", "C", "D", "E"), size = 1)

cat( "Grade:", grade, "\n")

if(grade == "A") {
    cat("Score Range: 90-100\n")
} else if (grade == "B") {
    cat("Score Range: 80-89\n")
} else if (grade == "C") {
    cat("Score Range: 70-79\n")
}else if (grade == "D") {
    cat("Score Range: 60-69\n")
}else if (grade == "E") {
    cat("Score Range: Below 60\n")
} else {
  cat("Error: Invalid Grade.\n")
}

# D.) Random Tempratures

temperature = sample(-30:120, size = 1)

cat("\nTemperature:" , temperature, "\n")

if ( temperature < -20){
  cat("InvalidValue\n")
} else if (temperature > 100) {
  cat("InvalidValue\n")
}  else if (temperature > -20 && temperature <30) {
  cat("Cold\n") 
} else if (temperature == 30) {
  cat("Cold-ish\n") 
} else if (temperature > 30) {
  cat("Warm\n") 
} else if (temperature == 60) {
  cat("Hot-ish\n") 
} else if (temperature > 60 && temperature <=100) {
  cat("Hot\n") 
}

# E.) Repeating Lesson 1-08 Parts  C, D, E

# Part c.) 
randomTemp = sample(40:80, size = 1)

weatherCondition = sample(
  c("Cloudy", "Sunny", "Rainy", "Foggy"),
  size = 1
)

cat("\nRandom Temperature:", randomTemp, "\n")
cat( "Weather Condition:", weatherCondition, "\n")

# Part e.) 

if (randomTemp >= 60 && weatherCondition == "Sunny"){
  cat(" It's Sunny and Warm.\n")
} else if (randomTemp < 60 && weatherCondition == "Sunny"){
  cat(" It's Sunny but Cool.\n")
} else if (randomTemp >= 60 && weatherCondition != "Sunny"){
  cat(" It's Warm but not sunny.\n")
} else{
  cat("It's Cool and Not Sunny.\n")
}