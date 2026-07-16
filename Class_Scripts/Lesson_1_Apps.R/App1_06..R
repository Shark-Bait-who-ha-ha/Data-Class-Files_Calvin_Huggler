#################################################
#Script Name: App1_06.R
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
   
### Output a text message
cat("Hello"); 

### Multiple commands on one line
a=3; b=7; cat("a+b=", a+b);
  
### Outputting multiple text messages (\n means go to next line)                    
cat("Hello, World.\n");
cat("How are you?\n"); 
cat("I am fine?\n");
  
### read in data from  twoWeekWeatherData.csv
weatherData = read.csv(file="Class_Data_sets/twoWeekWeatherData.csv", 
                       sep=",",
                       header=TRUE);  
  
### same command as above on one line (a little harder to read)
weatherData2 = read.csv(file="Class_Data_sets/twoWeekWeatherData.csv", sep=",", header=TRUE);



#1. Highlight lines 15 and 16 in the lesson script and click Run.  In comments explain what happens and why.
    # The read.csv() finction parentheses is not cclosed so the comand is incomplete
    # so R knows more code is needed before before it can execute the comand.

#2. Highlight lines 16 and 17 in the lesson script and click Run.  In comments explain what happens and why.
    # The error is because read.csv is not included, so R doesnt know what function the 
    # arguments are ment to be included in.

#3. Combine the lines 10, 11, and 12 into one line – don’t change the cat() commands.
cat("Hello,World.\n"); cat("How are you?\n"); cat("I am fine?\n")

#4. In comments answer the following questions:
    # A. There are 10 comands total. 
    # B. Since you can use commas, all 10 comands can fit on one line. 