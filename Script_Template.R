

rm(list = ls()) # Clear environment (fresh start every run
graphics.off() # clear plots
# open data file
data <- read.csv(
  file = "data/yourFileName.csv",
  header = TRUE,
  sep = ",",
  dec=".",)

# Quick data check
str(data)       # structure of dataset
head(data)      # first 6 rows
names(data)     # column names
nrow(data)      # number of rows
ncol(data)      # number of columns
col1 <- data$column1 # Replace with your actual column names
col2 <- data$column2

# Plot template
plot(col1,
     main = "Plot title",
     xlab = "X Axis",
     ylab = "Y Axis",
     col = "deepskyblue1",
     pch = 16)

# Factor example
factor_col <- factor(data$someCategory) #factors data
nlevels(factor_col) # number of lvls