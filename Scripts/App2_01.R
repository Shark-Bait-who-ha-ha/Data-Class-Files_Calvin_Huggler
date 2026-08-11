#################################################
# Script Name: App2_01.R
# Author: Calvin Huggler
# Creation Date: 8/11/2026
# Last Edit Date: 8/11/2026
# Purpose: Data Class Assignment
#################################################

rm(list = ls())  # Clear Enviornment

###### Start Code Here ######

# A 1.) The componet used to create a text plot would be geom_text()

# A 2. The componet ued to change the axis values if they were in Date 
#  format would be scale_x_date()

# B.) Scatter plot

library(ggplot2)

weatherData = read.csv( file = "Data/Lansing2016Noaa.csv")

App2_01_plot = ggplot( data= weatherData ) +
  geom_smooth( mapping = aes( x = stnPressure, y = windSpeed), 
                method = "lm", se = FALSE) +
  geom_point( mapping = aes(x = stnPressure, y = windSpeed)) +
  labs( title = "App2_01_plot Station Pressure vs Wind Speed",
        subtitle = "Lansing, Michigan 2016",
        x = "Station Pressure",
        y = "Wind Speed"
   ) +
    
  theme_linedraw() +
    theme( axis.text.x = element_text(angle = 45, hjust = 1)
    ) +
  
  scale_x_continuous(
    breaks = seq( 28.5, 30.5, by = 0.1), 
    limits = c(28.5, 30.5)
  )
  
  scale_y_continuous( 
    breaks = c(3, 12, 21),
    limits = c(0, 25)
  )
plot(App2_01_plot)