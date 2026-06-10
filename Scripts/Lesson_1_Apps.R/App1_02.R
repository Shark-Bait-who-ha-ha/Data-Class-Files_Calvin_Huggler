rm(list=ls());    # Clear out the Environment    

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

  