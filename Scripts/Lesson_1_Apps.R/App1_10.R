#################################################
#Script Name: App1_10.R
# Author: Calvin Huggler
# Cration Date: 7/10/26
# Last Edit Date: 7/16/26
# Purpose: Data Class Assignment
#################################################

rm(list = ls())  # Clear Enviornment

  ###### Start Code Here ######
   


  # 1 A.) The state variable must be declared outside for the loop because 
  # if it is declared inside the loop, it is reset every 
  # time the loop runs. this can prevent it from keeping track of the other values.

  # 1 B.) If you are adding up all the values in a vector
  # the state variable should start at 0 because no values have been added yt.

  # 1 C.) This loop: 
  # for( i in seq( from = 100, to = -100, by = -5))
  # will Cycle 41 times. 

  # Pulling data
weatherData = read.csv(file = "Data/twoWeekWeatherData.csv",
                       sep = ",",
                       header = TRUE)

highTemp = weatherData$highTemp
precipitation = weatherData$precipitation
conditions = weatherData$noonCondition

# 2.) Square, Cube, and Cube Root (1-10)

cat("Question 2\n")
for(i in 1:10) 
{
  cat("Number:", i,
      "Square:", 1^2,
      "Cube:" , i^3,
      "Cube Root:", i^(1/3),
      "\n")
}

# 3.) Count Days where High Temp is > 50

countBelow50 = 0
for(i in 1:length(highTemp))
{
  if(highTemp[i] < 50)
    {countBelow50 = countBelow50 + 1}
}

cat("\nQuestion 3\n")
cat("Days with high temperatures below 50:", countBelow50, "\n")

# 4.) Count even-numbered days that were cloudy

cloudyEvenDays = 0

for(i in seq(from = 2, length(conditions), by = 2 ))
{
    if(conditions[i] == "Cloudy") 
      {cloudyEvenDays = cloudyEvenDays + 1}
}

cat("\nQuestion 4\n")
cat("Even-numbered cloudy days:", cloudyEvenDays, "\n")

# 5.) Count how many of the last 8 days were cloudy

cloudyLast8Days = 0
for(i in (length(conditions) - 7) :length(conditions)) 
{
  if (conditions[i] == "Cloudy") 
    {cloudyLast8Days = cloudyLast8Days + 1}
}

cat("\nQuestion 5\n")
cat("Cloudy days in the last 8 days:", cloudyLast8Days, "\n")

# 6.) Total Percipitation

totalPrecipitation = 0
for( i in 1:length(precipitation)) 
{
    totalPrecipitation = totalPrecipitation + precipitation[i]
}

cat("\nQuewstion 6\n")
cat("Total Precipitation:", totalPrecipitation, "\n")