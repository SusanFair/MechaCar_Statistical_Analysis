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
The following graphics represent the Linear Regression of the MechaCar mpg vs the vehicle length, weight, the spoiler angle, ground clearance and the drive type AWD or non-AWD.

Linear Regression:<br>
![Linear Regression](https://github.com/SusanFair/MechaCar_Statistical_Analysis/blob/main/Resources/Part1_LinearRegression.PNG)

Summary of Linear Regression:<br>
![Linear Regression Summary](https://github.com/SusanFair/MechaCar_Statistical_Analysis/blob/main/Resources/Part1_LinearRegressionSummary.PNG)

* Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

    The p-values for Vehicle Length, Vehicle Weight and Ground Clearance all have show statistical significance.  This would indicate that they could cause a significant affect on the miles per gallon (mpg) of the vehicle.  Each of the p-values in these 3 variable are very close to 0 and therefore well below the .05 benchmark for the Null Hypothosis to be true.

* Is the slope of the linear model considered to be zero? Why or why not?

    The intercept p-value is 5.08e-08 which is 5.08 to the power of 10, meaning it is very close to 0.  

* Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

    Is it reasonable to assume that the linear model is predicting the MechaCar Prototypes accuratly.  We are seeing that some attributes of the car design are affecting the mpg attained and some have no direct or provable relationship to the mpg attained.


## Summary Statistics on Suspension Coils
Summary statistics provides a Mean, Median, Variance and Standard Deviations firstly for the entire dataset and secondly per manufacturing lot.  The criteris is the angle of the spoiler and the PSI effect of that angle.

#### Specification:
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. 

#### Total Summary:
The results of the whole data lot Variance was 62.29356 which would fit clearly under the 100 pounds per square inch specification.

![Totals Summary](https://github.com/SusanFair/MechaCar_Statistical_Analysis/blob/main/Resources/Part2_TotalSummary.PNG)

#### Lot Summary:
When breaking the data down to individual Manufacture lots however we see something very interesting. Lots 1 and 2 come in very well below the specification at .98 and 7.47 each.   

Lot 3 shows a huge amount of variance with a Variance result of 170.29! This is well over the manufacturing specification of <=100 PSI and definately something that the manufacturing team will want to look into.  

![Lot Summary](https://github.com/SusanFair/MechaCar_Statistical_Analysis/blob/main/Resources/Part2_LotSummary.PNG)



## T-Tests on Suspension Coils
Four t.tests were run initially using the whole sample dataframe vs the population data which had a population mean = 1500 lbs / square inch.

#### All data vs population data: <br>

![Sample T.test](https://github.com/SusanFair/MechaCar_Statistical_Analysis/blob/main/Resources/Part3SummaryTtest.PNG)

This initial t.test on the entire dataset returned a p-value of .06 which would show ???
The alternative hypoethis is true, the sample mean is not equal to 1500.  The sample mean was 1498.78

#### Lot 1 data vs population data:<br>
![Lot 1](https://github.com/SusanFair/MechaCar_Statistical_Analysis/blob/main/Resources/Part3Lot1.PNG)

Lot 1 results show a p-value of 1, ???

#### Lot 2 data vs population data: <br>
![Lot 2](https://github.com/SusanFair/MechaCar_Statistical_Analysis/blob/main/Resources/Part3Lot2.PNG)

Lot 2 resutls show a p-value of .06 ???

#### Lot 3 data vs population data: <br>
![Lot 3](https://github.com/SusanFair/MechaCar_Statistical_Analysis/blob/main/Resources/Part3Lot3.PNG)

Lot 3 results show a p-value of .04 ??
??? This one should be different.  It is under .05 and therefore the lot shows significant difference.
<br>

## Study Design: MechaCar vs Competition



#### Metric(s) to be used for testing
What metric or metrics are you going to test?

#### Hypothesis
Null:
Alternative
What is the null hypothesis or alternative hypothesis?

#### Test Type
What statistical test would you use to test the hypothesis? And why?


#### Data 
What data is needed to run the statistical test?


Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.




What is study design in statistics?
Study design is a process wherein the trial methodology and statistical analysis are organized to ensure that the null hypothesis is either accepted or rejected and the conclusions arrived at reflect the truth

How to design your research in 6 simple steps?
Step 1: Reflect on your hypothesis. ...
Step 2: Decide on research approach. ...
Step 3: Select the type of research design. ...
Step 4: Define your population and sampling method. ...
Step 5: Select data collection method. ...
Step 6: Design your data collection process.

What are the steps in the study design?
Step 1: Define your variables. You should begin with a specific research question. ...
Step 2: Write your hypothesis. ...
Step 3: Design your experimental treatments. ...
Step 4: Assign your subjects to treatment groups. ...
Step 5: Measure your dependent variable.

Online material
Hypothesis Testing in Five Steps
Regardless of the complexity of the dataset or the proposed question, hypothesis testing uses the same five steps:
1.	Generate a null hypothesis, its corresponding alternate hypothesis, and the significance level.
2.	Identify a statistical analysis to assess the truth of the null hypothesis.
3.	Compute the p-value using statistical analysis.
4.	Compare p-value to the significance level.
5.	Reject (or fail to reject) the null hypothesis and generate the conclusion.
