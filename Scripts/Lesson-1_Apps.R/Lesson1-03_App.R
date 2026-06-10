rm(list=ls());          # clean out the environment
set.seed(5); 

# 2) Create six variables that all hold length values:

# 1st and 2nd are assigned the values: 25, 30
Number_1= 25
Number_2= 30

# 3rd and 4th are randomly picked between 20 and 30 (each number has an equal chance)
Number_3= sample(20:30,1)
Number_4= sample(20:30,1)

# 5th and 6th are randomly picked from a normal distribution with mean of 25 and standard deviation of 2
Number_5= rnorm(1,25,2)
Number_6= rnorm(1,25,2)
 

# 3) Calculate the (a) mean, (b) variance, and (c) standard deviation of the six values.

# Mean Calculation
Data_Set_M =(Number_1 + Number_2 + Number_3 + Number_4 + Number_5 + Number_6)/6

# Variance Calculation
Data_Set_V = (((Number_1 - Data_Set_M)^2)+((Number_2-Data_Set_M)^2)+((Number_3-Data_Set_M)^2)+((Number_4-Data_Set_M)^2)+((Number_5-Data_Set_M)^2)+((Number_6-Data_Set_M)^2))/6

# Standard Deviation Calculation
Data_Set_Std=(Data_Set_V^(1/2))

Data_Set_M
Data_Set_V
Data_Set_Std

# 4) Challenge code
Number_Challenge= sample(0:99,1)/100

# Number Results 
Number_1
Number_2
Number_3
Number_4
Number_5
Data_Set_M
Data_Set_V
Data_Set_Std
Number_Challenge