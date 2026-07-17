############################################################
# CONSTANTS LIBRARY
# Author: Calvin Huggler
# Purpose: Frequently used scientific constants
############################################################

########################
# MATHEMATICS
########################

Constant_Math_Pi <- pi
Constant_Math_Euler <- exp(1)

########################
# UNIVERSAL PHYSICAL
########################

Constant_Physical_Avogadro <- 6.02214076e23      # mol^-1
Constant_Physical_GasConstant_R <- 8.314462618   # J/mol*K
Constant_Physical_Gravity <- 9.80665             # m/s^2
Constant_Physical_SpeedOfLight <- 299792458      # m/s

########################
# STANDARD CONDITIONS
########################

Constant_STP_Temperature_C <- 0
Constant_STP_Temperature_K <- 273.15

Constant_STP_Pressure_atm <- 1
Constant_STP_Pressure_kPa <- 101.325

Constant_STP_MolarVolume_Lmol <- 22.414

########################
# ROOM CONDITIONS
########################

Constant_Room_Temperature_C <- 25
Constant_Room_Temperature_K <- 298.15

Constant_Room_Pressure_atm <- 1

########################
# WATER
########################

Constant_Water_Density_gmL <- 1.000
Constant_Water_Density_kgm3 <- 1000

Constant_Water_BoilingPoint_C <- 100
Constant_Water_FreezingPoint_C <- 0

########################
# AIR
########################

Constant_Air_Oxygen_Percent <- 20.95
Constant_Air_Nitrogen_Percent <- 78.08
Constant_Air_Argon_Percent <- 0.93
Constant_Air_CO2_Percent <- 0.04

########################
# MOLECULAR WEIGHTS
########################

Constant_MW_Hydrogen <- 2.016
Constant_MW_Oxygen <- 31.998
Constant_MW_Nitrogen <- 28.014
Constant_MW_CarbonDioxide <- 44.01
Constant_MW_Methane <- 16.04
Constant_MW_Ammonia <- 17.031
Constant_MW_Water <- 18.015
Constant_MW_HydrogenSulfide <- 34.081

########################
# ELEMENTAL WEIGHTS
########################

Constant_AW_Hydrogen <- 1.008
Constant_AW_Carbon <- 12.011
Constant_AW_Nitrogen <- 14.007
Constant_AW_Oxygen <- 15.999
Constant_AW_Phosphorus <- 30.974
Constant_AW_Sulfur <- 32.06

########################
# ENERGY CONTENT
########################

Constant_Energy_CH4_MJ_m3 <- 35.8
Constant_Energy_CH4_kWh_m3 <- 9.94

Constant_Energy_NaturalGas_MJ_m3 <- 38.0

########################
# UNIT CONVERSIONS
########################

Constant_Conversion_InchesPerFoot <- 12
Constant_Conversion_FeetPerMile <- 5280

Constant_Conversion_cmPerMeter <- 100
Constant_Conversion_mmPerMeter <- 1000

Constant_Conversion_mLPerLiter <- 1000
Constant_Conversion_LitersPerCubicMeter <- 1000

Constant_Conversion_gramsPerKilogram <- 1000

########################
# BMP / ANAEROBIC DIGESTION
########################

Constant_BMP_CH4_Density_gL_STP <- 0.716

Constant_BMP_CO2_Density_gL_STP <- 1.977

Constant_BMP_TheoreticalCOD_CH4_gCOD_gCH4 <- 4.0

Constant_BMP_TheoreticalMethaneYield_LgCOD <- 0.35

########################
# EPA / WATER QUALITY
########################

Constant_pH_Neutral <- 7.0

Constant_DO_Saturation_25C_mgL <- 8.26

########################
# COMMON LAB VALUES
########################

Constant_Lab_BeakerSmall_mL <- 250
Constant_Lab_BeakerMedium_mL <- 500
Constant_Lab_BeakerLarge_mL <- 1000

Constant_Lab_VolumetricFlask100mL <- 100
Constant_Lab_VolumetricFlask250mL <- 250
Constant_Lab_VolumetricFlask500mL <- 500
Constant_Lab_VolumetricFlask1000mL <- 1000

############################################################
# EXAMPLES
############################################################

# Calculate moles of methane from 10 L CH4

Volume_L <- 10

Moles_CH4 <- Volume_L /
  Constant_STP_MolarVolume_Lmol

Moles_CH4

# Calculate methane energy

Methane_m3 <- 2.5

Energy_MJ <- Methane_m3 *
  Constant_Energy_CH4_MJ_m3

Energy_MJ