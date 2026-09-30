# R-data-cleaning-analysis
Data cleaning and preliminary analysis of an air quality dataset using R.
## Week 2 – Data Visualization and Analysis using R

This week focuses on creating meaningful and informative visualizations using R with the cleaned Air Quality dataset from Week 1.

### Dataset

The dataset contains 153 observations and 5 variables:

- Date
- Ozone
- Solar
- Wind
- Temp

 Visualizations Created

1. **Ozone vs Temperature – Scatter Plot**
   - Shows the relationship between temperature and ozone concentration.

2. **Average Ozone by Temperature Group – Bar Chart**
   - Compares average ozone concentration across low, moderate, and high temperature groups.

3. **Temperature Trend Over Time – Line Chart**
   - Shows temperature variations over the observation period.

4. **Distribution of Ozone Concentration – Histogram**
   - Shows the distribution and frequency of ozone values.

 R Script

The Week 2 analysis code is available in:

`week2_analysis.R`
 Report

The complete Week 2 report is available in:

`Week2_Data_Visualization_R_Professional.docx`
## Week 3: Statistical Analysis and Predictive Modeling

This week focused on statistical analysis and predictive modeling using R. The Air Quality dataset was used to study the relationship between ozone concentration and environmental variables such as temperature, wind, and solar radiation. The dataset was first explored using summary statistics and correlation analysis. Pearson correlation testing was performed to examine the relationship between Ozone and Temperature, and a Shapiro-Wilk test was used to assess the normality of Ozone and regression residuals.

A multiple linear regression model was developed using Ozone as the dependent variable and Temperature, Wind, and Solar as predictor variables. The dataset was divided into training and testing sets using an 80/20 split. Model performance was evaluated using RMSE, MAE, and test R-squared. Five-fold cross-validation was also performed to estimate predictive performance across different validation folds. Regression diagnostic plots were examined to check assumptions such as linearity, normality, and constant variance.

The analysis showed a positive relationship between temperature and ozone concentration. The regression model explained approximately 47.21% of the variation in ozone in the full dataset. On the test data, the model achieved an R-squared of approximately 52.25%, with RMSE of 20.29 and MAE of 14.38. Five-fold cross-validation produced an average RMSE of approximately 21.45. Diagnostic analysis indicated some departures from standard linear regression assumptions, including non-normal residuals and possible non-constant variance.

The main files for Week 3 include the R analysis script, regression diagnostic plots, and the detailed Word report. Potential improvements include investigating unusual observations, testing transformations, using robust methods, comparing nonlinear or alternative predictive models, and using repeated cross-validation with a larger dataset.

Tools Used

- R
- RStudio
- Microsoft Word
- Base R plotting functions
