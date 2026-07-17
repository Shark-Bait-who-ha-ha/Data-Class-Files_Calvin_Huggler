
rm(list = ls())  # Clear Enviornment


weatherData =read.csv(file="Data/Setup.csv", 
                       sep=",",
                       header=TRUE);

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
  facet_grid(rows=.~factor(windSpeedLevels,
                             levels=c("Low", "Medium", "High")),
             labeller=as_labeller(windLabels)) +
  scale_x_discrete(limits=c("North", "East", "South", "West")) +
  labs(title = "Change in Temperature vs. Wind Direction",
       subtitle = "Lansing, Michigan: 2016",
       x = "Wind Direction",
       y = "Degrees (Fahrenheit)");
plot(thePlot);
