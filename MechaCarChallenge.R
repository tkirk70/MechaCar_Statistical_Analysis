package 'formatR' successfully unpacked and MD5 sums checked

The downloaded binary packages are in
	C:\Users\timot\AppData\Local\Temp\RtmpMR4Wfk\downloaded_packages
# Challenge Deliverable #1
library(dplyr)
MechaCar <- read.csv("resources/MechaCar_mpg.csv", check.names = F, stringsAsFactors = F)
head(MechaCar)
tail(MechaCar)
typeof(MechaCar)
class(MechaCar)
read.csv("resources/MechaCar_mpg.csv")

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,
  data = MechaCar)  #generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance +
  AWD, data = MechaCar))  #generate summary statistics

# Without AWD
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance,
   data = MechaCar)  #generate multiple linear regression model


lm(mpg ~ vehicle_length, data=MechaCar)
summary(lm(mpg ~ vehicle_length, data=MechaCar))
lm(mpg ~ ground_clearance, data=MechaCar)
summary(lm(mpg ~ ground_clearance, data=MechaCar))
# Separating AWD.
MechaCar$AWD <- as.factor(MechaCar$AWD)
plt <- ggplot(MechaCar, aes(x = vehicle_length, y = mpg, color = AWD))  #import dataset into ggplot2
plt + geom_point() + labs(x = "Vehicle Length (ft)", y = "Miles Per Gallon", color = "AWD")  #add scatter plot with labels

# Deliverable #2
Suspension_Coil <- read.csv("resources/Suspension_Coil.csv")
Suspension_Coil.dt <- data.table::fread("resources/Suspension_Coil.csv")
Suspension_Coil.dt
class(Suspension_Coil.dt)
class(Suspension_Coil)
View(Suspension_Coil.dt)
View(Suspension_Coil)

total_summary <- Suspension_Coil %>%
  summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))  #create summary table.
total_summary
View(total_summary)

lot_summary <- Suspension_Coil %>%
  group_by(Manufacturing_Lot) %>%
  summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI),
    .groups = "keep")  #create summary table grouped by lot.
View(lot_summary)


# Deliverable 3: T-Tests on Suspension Coils
t.test(Suspension_Coil$PSI, mu = 1500)

Lot1 <- subset(Suspension_Coil, Manufacturing_Lot == "Lot1")
Lot2 <- subset(Suspension_Coil, Manufacturing_Lot == "Lot2")
Lot3 <- subset(Suspension_Coil, Manufacturing_Lot == "Lot3")
t.test(Lot1$PSI, mu = 1500)
t.test(Lot2$PSI, mu = 1500)
t.test(Lot3$PSI, mu = 1500)


# Extra Plots
plt <- ggplot(MechaCar, aes(x = vehicle_weight, y = mpg))  #import dataset into ggplot2
plt + geom_point() + geom_line(aes(y = yvals), color = "red")  #plot scatter a
plt <- ggplot(MechaCar, aes(x = ground_clearance, y = mpg))  #import dataset into ggplot2
plt + geom_point()

plt <- ggplot(MechaCar, aes(x = vehicle_length, y = mpg))  #import dataset into ggplot2
plt + geom_point()
plt <- ggplot(MechaCar, aes(x = vehicle_length, y = mpg))  #import dataset into ggplot2

model <- lm(mpg ~ vehicle_length, MechaCar)  #create linear model
yvals <- model$coefficients["vehicle_length"] * MechaCar$vehicle_length + model$coefficients["(Intercept)"]  #determine y-axis values from linear model
plt + geom_point() + geom_line(aes(y = yvals), color = "red")  #plot scatter and linear model

model

model2

summary(Lot1)
summary(Lot2)
summary(Lot3)

summary(Lot1$PSI)
summary(Lot2$PSI)
summary(Lot3$PSI)
