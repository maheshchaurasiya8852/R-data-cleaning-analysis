# ==========================================
# Normality Test
# ==========================================

ozone_normality <- shapiro.test(
  Air_Quality_Cleaned$Ozone
)

print(ozone_normality)
# ==========================================
# Multiple Linear Regression
# ==========================================

model <- lm(
  Ozone ~ Temp + Wind + Solar,
  data = Air_Quality_Cleaned
)

print(summary(model))
# ==========================================
# Train-Test Split
# ==========================================

set.seed(123)

train_index <- sample(
  1:nrow(Air_Quality_Cleaned),
  size = 0.8 * nrow(Air_Quality_Cleaned)
)

train_data <- Air_Quality_Cleaned[train_index, ]
test_data <- Air_Quality_Cleaned[-train_index, ]

print(nrow(train_data))
print(nrow(test_data))
# ==========================================
# Train-Test Split
# ==========================================

set.seed(123)

train_index <- sample(
  1:nrow(Air_Quality_Cleaned),
  size = 0.8 * nrow(Air_Quality_Cleaned)
)

train_data <- Air_Quality_Cleaned[train_index, ]
test_data <- Air_Quality_Cleaned[-train_index, ]

print(nrow(train_data))
print(nrow(test_data))
# ==========================================
# Train-Test Split
# ==========================================

set.seed(123)

train_index <- sample(
  1:nrow(Air_Quality_Cleaned),
  size = 0.8 * nrow(Air_Quality_Cleaned)
)

train_data <- Air_Quality_Cleaned[train_index, ]
test_data <- Air_Quality_Cleaned[-train_index, ]

print(nrow(train_data))
print(nrow(test_data))
# ==========================================
# Train Model and Make Predictions
# ==========================================

train_model <- lm(
  Ozone ~ Temp + Wind + Solar,
  data = train_data
)

predictions <- predict(
  train_model,
  newdata = test_data
)

print(head(predictions))
# ==========================================
# Model Performance Metrics
# ==========================================

rmse <- sqrt(
  mean((test_data$Ozone - predictions)^2)
)

mae <- mean(
  abs(test_data$Ozone - predictions)
)

test_r2 <- 1 - sum(
  (test_data$Ozone - predictions)^2
) / sum(
  (test_data$Ozone - mean(test_data$Ozone))^2
)

print(rmse)
print(mae)
print(test_r2)
# Model Performance - Test R2

test_r2 <- 1 - sum(
  (test_data$Ozone - predictions)^2
) / sum(
  (test_data$Ozone - mean(test_data$Ozone))^2
)

print(test_r2)
# ==========================================
# 5-Fold Cross-Validation
# ==========================================

set.seed(123)

K <- 5

folds <- sample(
  rep(1:K, length.out = nrow(train_data))
)

cv_rmse <- numeric(K)

for (k in 1:K) {
  
  cv_train <- train_data[folds != k, ]
  cv_valid <- train_data[folds == k, ]
  
  cv_model <- lm(
    Ozone ~ Temp + Wind + Solar,
    data = cv_train
  )
  
  cv_pred <- predict(
    cv_model,
    newdata = cv_valid
  )
  
  cv_rmse[k] <- sqrt(
    mean((cv_valid$Ozone - cv_pred)^2)
  )
}

print(cv_rmse)
print(mean(cv_rmse))
# ==========================================
# 5-Fold Cross-Validation
# ==========================================

set.seed(123)

K <- 5

folds <- sample(
  rep(1:K, length.out = nrow(train_data))
)

cv_rmse <- numeric(K)

for (k in 1:K) {
  
  cv_train <- train_data[folds != k, ]
  cv_valid <- train_data[folds == k, ]
  
  cv_model <- lm(
    Ozone ~ Temp + Wind + Solar,
    data = cv_train
  )
  
  cv_pred <- predict(
    cv_model,
    newdata = cv_valid
  )
  
  cv_rmse[k] <- sqrt(
    mean((cv_valid$Ozone - cv_pred)^2)
  )
}

print(cv_rmse)
print(mean(cv_rmse))
print(cv_rmse)
print(mean(cv_rmse))
# ==========================================
# Regression Diagnostics
# ==========================================

par(mfrow = c(2, 2))

plot(train_model)

par(mfrow = c(1, 1))
# ==========================================
# Normality Test of Regression Residuals
# ==========================================

residual_test <- shapiro.test(
  residuals(train_model)
)

print(residual_test)