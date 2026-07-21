#################################################
# Script Name: App1_12.R
# Author: Calvin Huggler
# Creation Date: 7/20/2026
# Last Edit Date: 7/20/2026
# Purpose: Data Class Assignment
#################################################

rm(list = ls())  # Clear Enviornment

###### Start Code Here ######


weatherData = read.csv(file = "Data/twoWeekWeatherData2.csv",
                       sep = ",",
                       header = TRUE)

highTemp = weatherData$highTemp
precipitation = weatherData$precipitation
conditions = weatherData$noonCondition
lowTemp = weatherData$lowTemp


# A.) One if else if for 54 degrees
for(i in 1:length(conditions))
{
  if(conditions[i] == "Sunny" & highTemp[i] > 54)
    {
    cat("Sunny day greater then 54\n")
    }

  else if (conditions[i] != "Sunny" & highTemp[i] <= 54)
    {
    cat("Non-Sunny day less than or equal to 54\n")
    }

  else if(conditions[i] == "Sunny" & highTemp[i] <= 54)
    {
    cat("Sunny day less than or equal to 54\n")
    }

  else 
    {
    cat("Non-Sunny day greater than 54\n")
    } 
}

# using one if-else-if sturcture is best because only one comdition can be True
# once the condition is found, R will skip the rest, making the code more efficent.
# 4 eperate staments would check every condition even after one might be true.

# B.) Boolean Vector for cloudy days
  
cloudyBool = weatherData$noonCondMessy == "Cloudy"|
             weatherData$noonCondMessy == "cloudy"|
             weatherData$noonCondMessy == "clouds"

# C.) CloudyDays Data frame

cloudyDays = weatherData[cloudyBool, ]
cloudyDays = cloudyDays[, -c(ncol(cloudyDays)-1, ncol(cloudyDays))]

# D.) Boolean vector for Rainy, Coudy, and snow Days

badWeather = conditions == "Rain" |
             conditions == "Cloudy" |
             conditions == "Snow" 

# E.) Days where lowtemp >40 , highTemp <60 and sunny
  
goodDays = lowTemp > 40 &
           highTemp > 60 &
           conditions == "Sunny"

weatherData[goodDays, ]

# F.) Random Temp. if-else-if

randomTemp = sample(0:100, size = 1)

cat("Random Temperature:", randomTemp, "\n")
{
  if(randomTemp < 20 || randomTemp > 80)
    {
    cat("error\n")
    }
  
  else if(randomTemp <= 30)
    {
    cat("Very cold\n")
    }
  
  else if(randomTemp <= 45)
    {
    cat("cold\n")
    }

  else if(randomTemp <= 60)
    {
    cat("nice\n")
    }
  
  else
    {
    cat("unusally warm\n")
    }
}
  