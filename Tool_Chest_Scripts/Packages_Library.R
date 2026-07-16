#################################################
#Script Name: Delivery_Man_Script.R
# Author: Calvin Huggler
# Date: 7/16/2026
# Purpose:Creates toolChest to load Needed packages for Diffrent jobs


#################################################
# CORE R / DATA SCIENCE
#################################################
install.packages(c(
"tidyverse",
"dplyr",
"tidyr",
"readr",
"stringr",
"forcats",
"purrr",
"tibble"
))
#################################################
# PLOTTING
#################################################
install.packages(c(
"ggplot2",
"ggthemes",
"patchwork",
"cowplot",
"plotly",
"scales",
"viridis"
))
#################################################
# STATISTICS
#################################################
install.packages(c(
"car",
"MASS",
"psych",
"DescTools",
"lmtest",
"multcomp"
))
#################################################
# EXCEL / FILES
#################################################
install.packages(c(
"readxl",
"openxlsx",
"writexl",
"janitor"
))
#################################################
# DATES / TIMES
#################################################
install.packages(c(
"lubridate"
))
#################################################
# REPORTS / QUARTO / PDF
#################################################
install.packages(c(
"knitr",
"rmarkdown",
"quarto",
"kableExtra",
"tinytex"
))
#################################################
# TABLES
#################################################
install.packages(c(
"gt",
"flextable",
"DT"
))
#################################################
# SCIENTIFIC WORK
#################################################
install.packages(c(
"units",
"pracma",
"matrixStats"
))
#################################################
# QUALITY OF LIFE
#################################################
install.packages(c(
"here",
"fs",
"cli"
))
#################################################
# INSTALL LATEX FOR PDFs
#################################################
if(!requireNamespace("tinytex", quietly = TRUE))
{
install.packages("tinytex")
}

tinytex::install_tinytex()
#################################################
# TEST LOAD
#################################################
library(tidyverse)
library(ggplot2)
library(readxl)
library(openxlsx)
library(knitr)
library(rmarkdown)
library(quarto)
cat("===================================\n")
cat(" BioWorks R Environment Ready\n")
cat("===================================\n")
cat("Packages Installed Successfully\n")
cat("Ready for:\n")
cat("- School Assignments\n")
cat("- Positron\n")
cat("- Quarto Reports\n")
cat("- PDF Generation\n")
cat("- Excel Files\n")
cat("- Scientific Plotting\n")
cat("- BMP Analysis\n")
cat("===================================\n")
