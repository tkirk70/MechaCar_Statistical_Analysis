# :red_car: MechaCar_Statistical_Analysis

OSU Challenge 15 - R

## Linear Regression to Predict MPG, and write a short summary using a screenshot of the output from the linear regression, and address the following questions:

```r
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,
  data = MechaCar)  #generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance +
  AWD, data = MechaCar))  #generate summary statistics
```

Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
vehicle_length and ground_clearance show the greatest correlation viz a vis mpg.
Is the slope of the linear model considered to be zero? Why or why not?

|Data Point | Slope |
|-----------|-------|
|vehicle_length   | 6.267e+00  |
|vehicle_weight   | 1.245e-03  |
|spoiler_angle    | 6.877e-02  |
|ground_clearance | 3.546e+00  |
|AWD              | -3.411e+00 |


Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
Only two of the five factors contribute significantly in determining mpg.

![](/img/deliverable1a.PNG)

A better use of the AWD column would be to use it as another category to investigate.
![](/img/Length_v_MPG_by_AWD.png)

With regression linear
![](/img/length_v_mpg.png)

## Summary Statistics on Suspension Coils, and write a short summary using screenshots from your total_summary and lot_summary dataframes, and address the following question:

```r
total_summary <- Suspension_Coil %>%
  summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))  #create summary table.
total_summary
View(total_summary)

lot_summary <- Suspension_Coil %>%
  group_by(Manufacturing_Lot) %>%
  summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI),
    .groups = "keep")  #create summary table grouped by lot.
View(lot_summary)
```

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

## T-Tests on Suspension Coils

```r
# Deliverable #3 Not sure if they wanted a sample versus population analysis
# below or mean vs population.
sample_table <- Suspension_Coil %>%
  sample_n(50)  #randomly sample 50 data points
t.test((sample_table$PSI), mu = mean(Suspension_Coil$PSI))  #compare sample versus population means
t.test(Suspension_Coil$PSI, mu = 1500)

Lot1 <- subset(Suspension_Coil, Manufacturing_Lot == "Lot1")
Lot2 <- subset(Suspension_Coil, Manufacturing_Lot == "Lot2")
Lot3 <- subset(Suspension_Coil, Manufacturing_Lot == "Lot3")
t.test(Lot1$PSI, mu = 1500)
t.test(Lot2$PSI, mu = 1500)
t.test(Lot3$PSI, mu = 1500)
```

Briefly summarize your interpretation and findings for the t-test results. Include screenshots of the t-test to support your summary.

## Study Design: MechaCar vs Competition

Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.
In your description, address the following questions:
What metric or metrics are you going to test?
What is the null hypothesis or alternative hypothesis?
What statistical test would you use to test the hypothesis? And why?
What data is needed to run the statistical test?
