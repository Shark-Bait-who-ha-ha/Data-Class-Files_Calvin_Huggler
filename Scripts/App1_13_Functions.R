#################################################
# Script Name: App1_13_Functions.R
# Author: Calvin Huggler
# Creation Date: 7/20/2026
# Last Edit Date: 7/20/2026
# Purpose: Data Class Assignment
#################################################

rm(list = ls())  # Clear Enviornment

###### Start Code Here ######

########################
#Mean Advanced Function
########################

mean_advanced = function (vec,removeNA = FALSE)
{
  vecAdded = 0
  numNA    = 0

  for(i in 1:length(vec))
    {
      if(is.na(vec[i]) == FALSE)
        {
          vecAdded = vecAdded + vec[i]
        }
      else if(removeNA == TRUE)
        {
        numNA = numNA +1
        }
      else if(removeNA == FALSE)
        {
        return(NA_real_)
        }
    }
  
    meanVal = vecAdded / (length(vec) - numNA)
    
    return(meanVal)
}

#standard Diviation /variance function

std_var = function(vec, type = "standard deviation")
{
    meanVal = mean_advanced(vec)
    total = 0
  
  for(i in 1:length(vec))
      {
      total = total + (vec[i] - meanVal)^2
      }
  
    variance = total / (length(vec)-1)
  
  if (type == "variance")
    {
     return(variance)
    }
  
  else if(type == "standard deviation")
    {
      return(sqrt(variance))
    }
}

# Temp conversion Function

temp_Convert = function(temp, direction)
{
  if(direction == "CtoF")
    {
    converted = (temp * 9/5) + 32
    }

    else if(direction == "FtoC")
    {
      converted = (temp - 32) * 5/9
    }

    return(converted)
}

# Grade Function

grade_Function = function(score)
{
    if(score < 0)
    {
    return("Error: Score Below 0")
    }

  else if (score > 100)
    {
    return("Error: Score over 100")
    }
  
  else if (score >= 90)
    {
    return("A")
    }
  
  else if (score >= 80)
    {
    return("B")
    }
  
  else if (score >= 70)
    {
    return("C")
    }
  
  else if (score >= 60)
    {
    return("D")
    }
  else
    {
    return("F")
    }
}

# Percent Abouve 60

percent_above60 = function(vec)
{
    validValues = c()
    for(i in 1:length(vec))
      {
        if(vec[1] >= 0 && vec[i] <= 100)
          {
          validValues = c(validValues, vec[i])
          }
      }
  
  if(length(validValues) == 0)
  {
    return(NA_real_)
  }

    count = 0

  for(i in 1:length(validValues))
    {
      if(validValues[i] > 60)
      {
        count = count+1
      }
    }
  
  percentage = (count / length(validValues)) * 100
  return(percentage)
}

