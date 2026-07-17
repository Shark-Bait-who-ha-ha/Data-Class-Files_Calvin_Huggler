############################################################
# CONVERSION LIBRARY
# Author: Calvin Huggler
# Purpose: Common scientific unit conversions
############################################################

########################
# DISTANCE
########################
Convert_Distance_Meter_to_Inches <- function(x)
{
  return(x * 39.3701)
}

Convert_Distance_Inches_to_Meter <- function(x)
{
  return(x / 39.3701)
}

Convert_Distance_Meter_to_Feet <- function(x)
{
  return(x * 3.28084)
}

Convert_Distance_Feet_to_Meter <- function(x)
{
  return(x / 3.28084)
}

Convert_Distance_Kilometer_to_Miles <- function(x)
{
  return(x * 0.621371)
}

Convert_Distance_Miles_to_Kilometer <- function(x)
{
  return(x / 0.621371)
}

Convert_Distance_Centimeter_to_Inches <- function(x)
{
  return(x / 2.54)
}

Convert_Distance_Inches_to_Centimeter <- function(x)
{
  return(x * 2.54)
}

########################
# AREA
########################

Convert_Area_SquareMeter_to_SquareFeet <- function(x)
{
  return(x * 10.7639)
}

Convert_Area_SquareFeet_to_SquareMeter <- function(x)
{
  return(x / 10.7639)
}

Convert_Area_Acres_to_Hectares <- function(x)
{
  return(x * 0.404686)
}

Convert_Area_Hectares_to_Acres <- function(x)
{
  return(x / 0.404686)
}

########################
# VOLUME
########################

Convert_Volume_Liter_to_Gallon <- function(x)
{
  return(x * 0.264172)
}

Convert_Volume_Gallon_to_Liter <- function(x)
{
  return(x / 0.264172)
}

Convert_Volume_Liter_to_mL <- function(x)
{
  return(x * 1000)
}

Convert_Volume_mL_to_Liter <- function(x)
{
  return(x / 1000)
}

Convert_Volume_CubicMeter_to_Liter <- function(x)
{
  return(x * 1000)
}

Convert_Volume_Liter_to_CubicMeter <- function(x)
{
  return(x / 1000)
}

Convert_Volume_CubicFeet_to_Liter <- function(x)
{
  return(x * 28.3168)
}

Convert_Volume_Liter_to_CubicFeet <- function(x)
{
  return(x / 28.3168)
}

########################
# Mass Conversions
########################

Convert_Mass_Gram_to_Kilogram <- function(x)
{
  return(x / 1000)
}

Convert_Mass_Kilogram_to_Gram <- function(x)
{
  return(x * 1000)
}

Convert_Mass_Pounds_to_Kilogram <- function(x)
{
  return(x * 0.453592)
}

Convert_Mass_Kilogram_to_Pounds <- function(x)
{
  return(x / 0.453592)
}

Convert_Mass_Ounces_to_Gram <- function(x)
{
  return(x * 28.3495)
}

Convert_Mass_Gram_to_Ounces <- function(x)
{
  return(x / 28.3495)
}

########################
# TEMPERATURE
########################

Convert_Temperature_Celsius_to_Fahrenheit <- function(x)
{
  return((x * 9/5) + 32)
}

Convert_Temperature_Fahrenheit_to_Celsius <- function(x)
{
  return((x - 32) * 5/9)
}

Convert_Temperature_Celsius_to_Kelvin <- function(x)
{
  return(x + 273.15)
}

Convert_Temperature_Kelvin_to_Celsius <- function(x)
{
  return(x - 273.15)
}

########################
# PRESSURE
########################

Convert_Pressure_psi_to_kPa <- function(x)
{
  return(x * 6.89476)
}

Convert_Pressure_kPa_to_psi <- function(x)
{
  return(x / 6.89476)
}

Convert_Pressure_atm_to_kPa <- function(x)
{
  return(x * 101.325)
}

Convert_Pressure_kPa_to_atm <- function(x)
{
  return(x / 101.325)
}

Convert_Pressure_mmHg_to_kPa <- function(x)
{
  return(x * 0.133322)
}

Convert_Pressure_kPa_to_mmHg <- function(x)
{
  return(x / 0.133322)
}

########################
# ENERGY
########################

Convert_Energy_Calorie_to_Joule <- function(x)
{
  return(x * 4.184)
}

Convert_Energy_Joule_to_Calorie <- function(x)
{
  return(x / 4.184)
}

Convert_Energy_kWh_to_MJ <- function(x)
{
  return(x * 3.6)
}

Convert_Energy_MJ_to_kWh <- function(x)
{
  return(x / 3.6)
}

########################
# BMP / BIOGAS
########################

Convert_Biogas_mL_to_Liter <- function(x)
{
  return(x / 1000)
}

Convert_Biogas_Liter_to_mL <- function(x)
{
  return(x * 1000)
}

Convert_Biogas_Liter_to_CubicMeter <- function(x)
{
  return(x / 1000)
}

Convert_Biogas_CubicMeter_to_Liter <- function(x)
{
  return(x * 1000)
}

Convert_Biogas_CH4Percent_to_Fraction <- function(x)
{
  return(x / 100)
}

Convert_Biogas_Fraction_to_CH4Percent <- function(x)
{
  return(x * 100)
}

########################
# CONCENTRATION
########################

Convert_Concentration_mgL_to_gL <- function(x)
{
  return(x / 1000)
}

Convert_Concentration_gL_to_mgL <- function(x)
{
  return(x * 1000)
}

Convert_Concentration_ugL_to_mgL <- function(x)
{
  return(x / 1000)
}

Convert_Concentration_mgL_to_ugL <- function(x)
{
  return(x * 1000)
}

