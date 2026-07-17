#################################################
#Script Name: App1_02.R
# Author: Calvin Huggler
# Cration Date: --
# Last Edit Date: 7/16/26
# Purpose: Data Class Assignment
#################################################

rm(list = ls())  # Clear Enviornment

# Open Librraries
{
  library(tidyverse)
  library(readxl)
  library(openxlsx)
  library(ggplot2)
  library(knitr)
  library(lubridate)}


   

 convert_speed <- function(distance_m, time_s){

  velocity_ms <- distance_m / time_s
  velocity_mph <- velocity_ms * 2.23694

  return(velocity_mph)
 # cat("Runner Velocity:", round(velocity_ms,2), "m/s\n")
 # cat("Runner Velocity:", round(velocity_mph,2), "mph\n")
 }
# Picking a Random Number for Distance (1000m - 2000m),  and Time (100s - 150s) 
  Runner_1_Random_Distance= sample(1000:2000, 1)
  Runner_1_Random_Time = sample(100:150, 1)
  Runner_2_Random_Distance= sample(1000:2000, 1)
  Runner_2_Random_Time = sample(100:150, 1)

answer = convert_speed(Runner_1_Random_Distance,Runner_1_Random_Time) 
convert_speed(Runner_2_Random_Distance,Runner_2_Random_Time) 

  