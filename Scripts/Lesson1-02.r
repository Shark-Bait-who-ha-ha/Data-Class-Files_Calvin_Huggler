rm(list=ls());    # Clear out the Environment    
  
# create three variables: d, t, and v
# give d and t values and use them to calculate v
d = 100;   # assign d the value 100
t = 20;
v = d/t;   # use d to calculate v

d = 400;   # re-assigns d to 400
rm(list=ls());    # Clear out the Environment    
  
# create three variables: d, t, and v
# give d and t values and use them to calculate v
d = 100; # assign d the value 100
t = 20;
v = d/t; # use d to calculate v

d = 400; # re-assigns d to 400
v = d/t; # re-assign v using the new value of d
rm(list=ls());    # Clear out the Environment    
 
# create three variables: Distance, Time, Volocity 

# Distance in (meters)
Distance = c(400, 400)

# Time (seconds)
Time= c(127,140)


# Runner Volocity (meters/second)
Runner_Volocity_MS = Distance / Time


# Runner Volocity (Miles/Hour)
Runner_Volocity_MPH = Runner_Volocity_MS *2.23694

# to View Results
Runner_Volocity_MPH
Runner_Volocity_MS

# Make a Reuslts Table
Results = data.frame(Distance_M = Distance, Time_S = Time, Runner_Volocity_MS = Runner_Volocity_MS, Runner_Volocity_MPH = Runner_Volocity_MPH)

 convert_speed <- function(distance_m, time_s){

  velocity_ms <- distance_m / time_s
  velocity_mph <- velocity_ms * 2.23694

  cat("Runner Velocity:", round(velocity_ms,2), "m/s\n")
  cat("Runner Velocity:", round(velocity_mph,2), "mph\n")
}
# Picking a Random Number for Distance (1000m - 2000m),  and Time (100s - 150s) 
Runner_1_Random_Distance= sample(1000:2000, 1)
Runner_1_Random_Time = sample(100:150, 1)
Runner_2_Random_Distance= sample(1000:2000, 1)
Runner_2_Random_Time = sample(100:150, 1)

convert_speed(Runner_1_Random_Distance,Runner_1_Random_Time) 
convert_speed(Runner_2_Random_Distance,Runner_2_Random_Time) 
