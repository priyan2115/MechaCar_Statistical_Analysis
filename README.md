# MechaCar_Statistical_Analysis
R and Rscript
## Linear Regression to Predict MPG
  write a short summary using a screenshot of the output from the linear regression, and address the following questions:
  ![image](link)

Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
**Ans**: The **Vehical_length** and **Ground_clearance** are provide a **non-random** amount of variance,and the other amount has P-values so that provide random amount of variance.

Is the slope of the linear model considered to be zero? Why or why not?
**Ans**: As we can see in the Image that the **P-value is 5.35e-11** which is much **smaller** than the significance level of **0.05%** which means there is sufficeint evidence to  **reject all null Hypnothesis** and that also indicates the **slope o fthe linear model is not ZERO**.

Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
**Ans**: We can see that the r-squared value is **0.7149** that means 71% of mpg value will be determined by this model.So, here **predict mpg of MechaCar prototypes effectively**.

## Summary Statistics on Suspension Coils
write a short summary using screenshots from your total_summary and lot_summary dataframes, and address the following question:

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

## T-Tests on Suspension Coils
summarize your interpretation and findings for the t-test results. Include screenshots of the t-test to support your summary.
## Study Design: MechaCar vs Competition
Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.

In your description, address the following questions:

What metric or metrics are you going to test?

In this we used following matrics:
* Safety Feature Rating:**Independent Variable**
* Current Price(Selling):**Dependent Variable**
* Driven Package:**Independent Variable**
* Engine:**Independent Variable**
* Resale Value:**Independent Variable**
* Average Annual Cost of ownership(Maintenance):**Independent Variable**
* MPG(Gasoline Efficiency):**Independent Variable**
 
What is the null hypothesis or alternative hypothesis?

* Null Hypnothysis(Ho): MechCar is priced correctly based on its performance of the key factors for its genere.
* Alternative Hypnothysis(Ha): MechaCar is not price correctly based on performance of the key factor.

What statistical test would you use to test the hypothesis? And why?
A **multiple linear reggression** would be used to determine the factor that have th ehighest correlation with the list selling price,that combination has the best impect on price.

What data is needed to run the statistical test?
