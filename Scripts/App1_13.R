#################################################
# Script Name: App1_13.R
# Author: Calvin Huggler
# Creation Date: 7/16/2026
# Last Edit Date: 7/16/2026
# Purpose: Data Class Assignment
#################################################

rm(list = ls())  # Clear Enviornment

###### Start Code Here ######

source("Scripts/App1_13_Functions.R")


# 1.) Testing mean_advanced Function

mean_1 = mean_advanced(c(1,2,3,4))
mean_2 = mean_advanced(c(1,2,NA,4))
mean_3 = mean_advanced(c(1,2,NA,4), removeNA=TRUE)

# A.)
# We count the number of NAs because when we remove them from the 
# calculations we need to adjust the denominator so the mean is 
# calculated using only the valid numbers.

# B.) 
# we know the ith value must be NA because the first if statement
# already checked if it was NOT NA

# C.)
# it would not excicute if the FUN. encountered a NA value
# and removeNA is FALSE because return(NA_real_) ends the function.


# Testing Standard Deviation / variance

testVec = c(3,5,7,9)
std = std_var(testVec)
variance = std_var(testVec, type = "variance")

# Testing Temp
fahrenheit = temp_Convert(0, direction = "CtoF")
celsius = temp_Convert(32, direction = "FtoC")

# Testing Grades
grade1 = grade_Function(95)
grade2 = grade_Function(75)
grade3 = grade_Function(-5)
grade4 = grade_Function(120)


#Testing percent above 60

randomNumbers = sample(-20:120, size = 25)
percent = percent_above60(randomNumbers)
