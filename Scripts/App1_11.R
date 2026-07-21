#################################################
# Script Name: App1_11.R
# Author: Calvin Huggler
# Creation Date: 7/16/2026
# Last Edit Date: 7/16/2026
# Purpose: Data Class Assignment
#################################################

rm(list = ls())  # Clear Enviornment

###### Start Code Here ######


weatherData = read.csv(file = "Data/twoWeekWeatherData.csv",
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

found = FALSE
for(i in seq(from = 2, to = length(lowTemp), by = 2))
{
  if(lowTemp[i]>=50)
  {
    cat("\nQuestions 2\n") 
    cat( "Day", i, "meets the condition with a low temp of",
    lowTemp[i], "degrees. \n")
    found = TRUE
    break
  }
}
if(found == FALSE)
{
  cat("\nQuestion 2\n")
  cat("No even days had a low temp of at least 50. \n")
}


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

precipitation_1inorMore = 0
precipitation_0.1in_1in = 0
precipitation_0.1inorLess = 0

for(i in 1:length(precipitation))
{  
if(precipitation[i] >=1) 
  {
  precipitation_1inorMore = precipitation_1inorMore + 1
  }
else if(precipitation[i] >= 0.1 & precipitation[i] <1)  
  {
  precipitation_0.1in_1in = precipitation_0.1in_1in + 1
  }
else
  {
  precipitation_0.1inorLess = precipitation_0.1inorLess +1  
  }
}

cat("\nQuestion 4\n")
cat("1in or more:", precipitation_1inorMore, "\n")
cat("Between 0.1in and 1 in:", precipitation_0.1in_1in, "\n" )
cat("0.1in or less:", precipitation_0.1inorLess, "\n" )



# 5) Finding the lowest temp and date

lowestTemp = lowTemp[1]
lowestDay = weatherData$date[1]

for(i in 2:length(lowTemp))
    {
      if(lowTemp[i]< lowestTemp)
      {
        lowestTemp = lowTemp[i]
        lowestDay = weatherData$date[i]
      }
}

cat("\nQuestion 5\n")
cat("Lowest Temperature:", lowestTemp, "\n")
cat("Date:", lowestDay, "\n")

# 6) Warmest Cloudy day and the mean cloudy day temp. 

cloudyHigh = -Inf
cloudyTotal = 0
cloudyCount = 0

for(i in 1:length(conditions))
{
  if(conditions[i] == "Cloudy")
    {
     if(highTemp[i] > cloudyHigh)
    {
      cloudyHigh = highTemp[i]
    }
     
    cloudyTotal = cloudyTotal + highTemp[i]
    cloudyCount = cloudyCount + 1
  }
}

cloudyMean = cloudyTotal / cloudyCount 


cat("\nQuestion 6\n")
cat("Highest Temp on Cloudy Days:", cloudyHigh, "\n")
cat("Mean Temp on Cloudy Days:", cloudyMean, "\n")