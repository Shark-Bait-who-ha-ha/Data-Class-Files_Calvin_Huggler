#################################################
#Script Name: App1_01.R
# Author: Calvin Huggler
# Cration Date: --
# Last Edit Date: 7/16/26
# Purpose: Data Class Assignment
#################################################

rm(list = ls())  # Clear Enviornment

  ###### Start Code Here ##########


weatherData = read.csv(file = "Data/Setup.csv");

#### Labels for the facets of the plot
windLabels = c(Low = "Light Winds",
               Medium = "Medium Winds",
               High = "Strong Winds");

#### Boxplots of Change in Temperature vs. Wind Direction 
#    at different wind speeds
thePlot = ggplot(data=weatherData) +
  geom_boxplot(mapping=aes(x=windDir, y=changeMaxTemp), 
               na.rm=TRUE,
               color=c("darkturquoise", rep("black", 3),
                       "deeppink", rep("black", 3),
                       "darkorchid3 ", rep("black", 3)),
               fill=c(rep(NA, 8), rep("red", 3), NA)) +
  theme_bw() +
  facet_grid(rows=.~factor(windSpeedLevel,
                             levels=c("Low", "Medium", "High")),
             labeller=as_labeller(windLabels)) +
  scale_x_discrete(limits=c("North", "East", "South", "West")) +
  labs(title = "Change in Temperature vs. Wind Direction",
       subtitle = "Lansing, Michigan: 2016",
       x = "Wind Direction",
       y = "Degrees (Fahrenheit)");
plot(thePlot);
