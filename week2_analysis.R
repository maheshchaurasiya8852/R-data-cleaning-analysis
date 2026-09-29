# ==========================================
# Yuva Intern - Week 2
# Data Visualization and Analysis using R
# Dataset: Air Quality Missing Data
# ==========================================


# 1. Load Cleaned Dataset
Air_Quality_Cleaned <- read.csv(
  "C:/Users/mahes/Desktop/Air_Quality_Cleaned.csv"
)


# 2. View Dataset
head(Air_Quality_Cleaned)


# 3. Convert Date into Date Format
Air_Quality_Cleaned$Date <- as.Date(
  Air_Quality_Cleaned$Date
)


# ==========================================
# Visualization 1: Ozone vs Temperature
# ==========================================

plot(
  Air_Quality_Cleaned$Temp,
  Air_Quality_Cleaned$Ozone,
  main = "Ozone vs Temperature",
  xlab = "Temperature",
  ylab = "Ozone",
  pch = 19,
  cex = 1.2
)


# ==========================================
# Visualization 2: Average Ozone by
# Temperature Group
# ==========================================

Air_Quality_Cleaned$Temp_Group <- cut(
  Air_Quality_Cleaned$Temp,
  breaks = c(-Inf, 70, 80, Inf),
  labels = c(
    "Low (≤70)",
    "Moderate (71-80)",
    "High (>80)"
  )
)

ozone_by_group <- tapply(
  Air_Quality_Cleaned$Ozone,
  Air_Quality_Cleaned$Temp_Group,
  mean
)

barplot(
  ozone_by_group,
  main = "Average Ozone by Temperature Group",
  xlab = "Temperature Group",
  ylab = "Average Ozone",
  col = c("skyblue", "gold", "tomato")
)


# ==========================================
# Visualization 3: Temperature Trend
# Over Time
# ==========================================

plot(
  Air_Quality_Cleaned$Date,
  Air_Quality_Cleaned$Temp,
  type = "o",
  main = "Temperature Trend Over Time",
  xlab = "Date",
  ylab = "Temperature",
  pch = 19
)


# ==========================================
# Visualization 4: Ozone Distribution
# ==========================================

hist(
  Air_Quality_Cleaned$Ozone,
  breaks = 12,
  main = "Distribution of Ozone Concentration",
  xlab = "Ozone",
  ylab = "Frequency",
  col = "lightblue",
  border = "white"
)


# ==========================================
# Correlation: Ozone and Temperature
# ==========================================

cor(
  Air_Quality_Cleaned$Ozone,
  Air_Quality_Cleaned$Temp
)