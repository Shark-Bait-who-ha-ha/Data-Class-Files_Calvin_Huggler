#################################################
#Script Name: App1_05.R
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
   

# Create this sequence: 13, 9, 5, 1, -3, -7, -11 using seq(). Come up with two more ways (three in all)
Seq_1A = seq(from=13,to=-11,by=-4)
Seq_1B = seq(from=13,to=-11,,length.out=7)
Seq_1C = seq(from=13,by=-4,,length.out=7)
print(c(Seq_1A,Seq_1B,Seq_1C))

# Explain, in comments, why you get an error if you try to use all four arguments in seq(): from, by, to, length.out
    # to many arguments in the system makes it ambiguis and R dosent know hoe to reconstruct the formula

# In Read.cvs defults values are 
    # row.names = NULL - and the row # are auto assigned
    # na.strings = NA - a value is missing and this is the indicator result
    # fill - FALSE - the ammount of rows in each column are not equal 
    # comment.char = # - anythin after is a comment 

#Find the log (base 5) of this vector: c(0.04, 0.2, 25, 125) using the log() function
Vec1 = c(0.04,0.2,25,125)
Vector_log = log(Vec1,base=5)
print(round(Vector_log))

# Open Weather data with commas
WD_Comma= read.csv(file= "Class_Data_sets/twoWeekWeatherData_Comma.csv",
                    header= TRUE,
                    sep= " ",
                    dec= ",")
# make data Vectors
rainyDay= WD_Comma$date
NoonCond= WD_Comma$noonCondition


# Call the function factor() twice, passing in (1) the column date and (2) the column noonCondition as the argument and answer the following in comments:
rainyDay_Fac= factor(rainyDay)
NoonCond_Fac= factor(NoonCond)
print(c(rainyDay_Fac,NoonCond_Fac))

# How many factors levels does the noonCondition column have? 
NoonCon_Fac_Lvls= nlevels(NoonCond_Fac) # 5 lvlS
print(NoonCon_Fac_Lvls)
#How many factors levels does the date column have?
rainyDay_Fac_lvls= nlevels(rainyDay_Fac) # 14 lvls
print(rainyDay_Fac_lvls)

# #What is a factor level?
# a unique catigory within a factor