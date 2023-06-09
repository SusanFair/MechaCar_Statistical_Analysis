# MechaCar Statistical Analysis

## Overview


A few weeks after starting his new role, Jeremy is approached by upper management about a special project. AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called on Jeremy and the data analytics team to review the production data for insights that may help the manufacturing team.

In this challenge, you’ll help Jeremy and the data analytics team do the following:

Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes.
Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots.
Run t-tests to determine if the manufacturing lots are statistically different from the mean population.
Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

After you’ve completed the technical analysis for each part, provide a short summary of the results in the README.md of the analysis. For the final part, you’ll write up a short description of the study design for additional statistical analysis. In the written summaries, we would like you to think critically about your analysis, not demonstrate proficiency of automotive manufacturing.

## Linear Regression to Predict MPG
The following graphics represent the Linear Regression of the MechaCar mpg as it is affected by the vehicle length, weight, the spoiler angle, ground clearance and the drive type AWD or non-AWD.

Linear Regression:<br>
![Linear Regression](https://github.com/SusanFair/MechaCar_Statistical_Analysis/blob/main/Resources/Part1_LinearRegression.PNG)

Summary of Linear Regression:<br>
![Linear Regression Summary](https://github.com/SusanFair/MechaCar_Statistical_Analysis/blob/main/Resources/Part1_LinearRegressionSummary.PNG)

* Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

    The p-values for Vehicle Length and Ground Clearance show statistical significance.  This would indicate that they could cause a significant affect on the miles per gallon (mpg) of the vehicle.  Each of the p-values in these variables are very close to 0 and therefore well below the .05 benchmark for the null hypothosis to be true.  However further analysis would be required.  

* Is the slope of the linear model considered to be zero? Why or why not?

    The intercept p-value is 5.08e-08 which is 5.08 to the power of 10, meaning it is very close to 0.  

* Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

    It is reasonable to assume that the linear model is predicting the MechaCar Prototypes accuratly.  We are seeing that some attributes of the car design are affecting the mpg attained and some have no direct or provable relationship to the mpg attained.  


## Summary Statistics on Suspension Coils
Summary statistics provide a Mean, Median, Variance and Standard Deviations firstly for the entire dataset and secondly per manufacturing lot.  The criteria is the angle of the spoiler and the PSI effect of that angle.

#### Specification:
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. 

#### Total Summary:
The results of the whole data lot Variance was 62.29356 which would fit clearly under the 100 pounds per square inch specification.

![Totals Summary](https://github.com/SusanFair/MechaCar_Statistical_Analysis/blob/main/Resources/Part2_TotalSummary.PNG)

#### Lot Summary:
When breaking the data down to individual Manufacturing lots however we see something very interesting. Lots 1 and 2 come in very well below the specification at .98 and 7.47 respectively.   

Lot 3 shows a huge amount of variance with a Variance result of 170.29! This is well over the manufacturing specification limit of <=100 PSI and definately something that the manufacturing team will want to look into.  

![Lot Summary](https://github.com/SusanFair/MechaCar_Statistical_Analysis/blob/main/Resources/Part2_LotSummary.PNG)<br>



## T-Tests on Suspension Coils
Four t.tests were run using the Spoiler data PSI vs the population which had a population mean = 1500 lbs / square inch.

#### All data vs population data: <br>
This initial t.test on the entire dataset returned a p-value of .06 and a sample mean of 1498.78 which would fit within the 95% confidence level. The p-value is over the .05 threshold for the p-value therefore we cannot reject the null hypothesis.

![Sample T.test](https://github.com/SusanFair/MechaCar_Statistical_Analysis/blob/main/Resources/Part3SummaryTtest.PNG)


#### Lot 1 data vs population data:<br>
Lot 1 results show a p-value of 1 which is over .05.  There is no reason to reject the null hypothesis.  Also the sample mean is 1500 exactly with a 95 % confidence interval.

![Lot 1](https://github.com/SusanFair/MechaCar_Statistical_Analysis/blob/main/Resources/Part3Lot1.PNG)


#### Lot 2 data vs population data: <br>
Lot 2 results show a p-value of .06 and a sample mean of 1500.2 The p-value is over the .05 threshold for the p-value therefore we cannot reject the null hypothesis. Also the sample mean is 1500.2 with a 95 % confidence interval.

![Lot 2](https://github.com/SusanFair/MechaCar_Statistical_Analysis/blob/main/Resources/Part3Lot2.PNG)



#### Lot 3 data vs population data: <br>
Lot 3 results show a p-value of .041 which is below the .05 threshold.  The average sample mean wa 1496.14 well below the other lots. We would therefore reject the null hypothesis it shows some significant difference.  Further investigation into this lot will be required to discover the special cause of difference

![Lot 3](https://github.com/SusanFair/MechaCar_Statistical_Analysis/blob/main/Resources/Part3Lot3.PNG)
<br>

## Study Design: MechaCar vs Competition
Is MechaCar design the same as their competition or better?

#### Fuel Efficiency
With the high cost of fuel the cost to drive a car is a key concern.  Can MechaCar beat the competition?

* Metric(s) to be used for testing<br>
Miles per gallon (mpg) - the difference between the mean values from each dataset

* Hypothesis<br>
Null: MechaCar (mpg) the same as the competition<br>
Alternate: MechaCar has a higher miles per gallon than the competition

* Test type<br>
t.test - test the MechaCar model against a sample of the competitions vehicles

* Data<br>
Data from MechaCar of the model under test.  Matching data from the competition.  Data should only be used for cars with physiscal size within 15% of MechaCar and the same engine size.

#### Cost
With high interest rates customers are looking at the bottom line.  The cost to buy a vehicale can be a decision factor.  Can MechaCar keep up with the competition?

* Metric(s) to be used for testing<br>
Base cost of the vehicle within a vehicale class.  The difference between the mean values from each dataset

* Hypothesis<br>
Null: MechaCar cost the same as the competition<br>
Alternate: MechaCar has a lower base cost than the competition

* Test type<br>
t.test - test the MechaCar model against a sample of the competitions vehicles

* Data<br>
Data from MechaCar of the model class under test.  Matching data from the competition cars within the same vehicle class.  Data should only be used for cars within the same industry class e.g.: sub-compact.  This would include physical size within 15% of MechaCar and the same engine size.


#### Safety Rating
Safety is a key concern of consumers.  With advances in airbags and design techniques safety ratings are a big differentiator.

* Metric(s) to be used for testing<br>
Overall safety rating. Impact of safety features on the safety rating

* Hypothesis<br>
Null: MechaCar safety rating is the same as the competition<br>
Alternate: MechaCar has a higher safety rating than the competition

* Test type<br>
Anova One-Way - test the safety rating of MechaCar model against several competitors vehicles
Anova Two-Way - test the effect of safety features for MechaCar model and the competition on their safety rating overall

* Data<br>
Data from MechaCar and the competition showing: Manufacturer, model, safety rating, num of airbags, ABS (Automatics Breaking System), Forward Collision Warning.

