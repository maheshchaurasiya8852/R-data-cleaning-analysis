# Week 1 - Data Cleaning & Preliminary Analysis

# Load dataset
Air_Quality_Missing_Data <- read.csv(
  "C:/Users/mahes/Downloads/Air Quality Missing Data.csv",
  na.strings = "NA"
)

# View first rows
head(Air_Quality_Missing_Data)

# Check structure
str(Air_Quality_Missing_Data)

# Check missing values
colSums(is.na(Air_Quality_Missing_Data))

# Find median values
median(Air_Quality_Missing_Data$Ozone, na.rm = TRUE)
median(Air_Quality_Missing_Data$Solar, na.rm = TRUE)

# Replace missing Ozone values
Air_Quality_Missing_Data$Ozone[
  is.na(Air_Quality_Missing_Data$Ozone)
] <- median(Air_Quality_Missing_Data$Ozone, na.rm = TRUE)

# Replace missing Solar values
Air_Quality_Missing_Data$Solar[
  is.na(Air_Quality_Missing_Data$Solar)
] <- median(Air_Quality_Missing_Data$Solar, na.rm = TRUE)

# Check missing values after cleaning
colSums(is.na(Air_Quality_Missing_Data))

# Summary statistics
summary(Air_Quality_Missing_Data)

# Correlation between Ozone and Temperature
cor(
  Air_Quality_Missing_Data$Ozone,
  Air_Quality_Missing_Data$Temp
)

# Scatter plot
plot(
  Air_Quality_Missing_Data$Temp,
  Air_Quality_Missing_Data$Ozone,
  main = "Ozone vs Temperature",
  xlab = "Temperature",
  ylab = "Ozone",
  pch = 19
)

# Ozone histogram
hist(
  Air_Quality_Missing_Data$Ozone,
  main = "Distribution of Ozone",
  xlab = "Ozone",
  col = "lightblue"
)

# Save cleaned dataset
write.csv(
  Air_Quality_Missing_Data,
  "C:/Users/mahes/Desktop/Air_Quality_Cleaned.csv",
  row.names = FALSE
)