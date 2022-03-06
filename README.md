# MechaCar_Statistical_Analysis

OSU Challenge 15 - R

## Linear Regression to Predict MPG, and write a short summary using a screenshot of the output from the linear regression, and address the following questions:

```R
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,
  data = MechaCar)  #generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance +
  AWD, data = MechaCar))  #generate summary statistics
  ```

  Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
    - vehicle_length and ground_clearance show the greatest correlation viz a vis mpg.
  Is the slope of the linear model considered to be zero? Why or why not?
|Data Point | Slope |
|-----------|-------|
|vehicle_length   | 6.267e+00  |
|vehicle_weight   | 1.245e-03  |
|spoiler_angle    | 6.877e-02  |
|ground_clearance | 3.546e+00  |
|AWD              | -3.411e+00 |


  Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
  -

## Summary Statistics on Suspension Coils, and write a short summary using screenshots from your total_summary and lot_summary dataframes, and address the following question:

  The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

## T-Tests on Suspension Coils

  then briefly summarize your interpretation and findings for the t-test results. Include screenshots of the t-test to support your summary.

## Study Design: MechaCar vs Competition

  Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.
  In your description, address the following questions:
  What metric or metrics are you going to test?
  What is the null hypothesis or alternative hypothesis?
  What statistical test would you use to test the hypothesis? And why?
  What data is needed to run the statistical test?
