summary(lm(mpg ~ `vehicle length` + `vehicle weight` + `spoiler angle` + `ground clearance` + AWD,data=car_table))

Call:
  lm(formula = mpg ~ `vehicle length` + `vehicle weight` + `spoiler angle` + 
       `ground clearance` + AWD, data = car_table)

Residuals:
  Min       1Q   Median       3Q      Max 
-19.4701  -4.4994  -0.0692   5.4433  18.5849 

Coefficients:
                     Estimate Std. Error t value Pr(>|t|)    
(Intercept)        -1.040e+02  1.585e+01  -6.559 5.08e-08 ***
  `vehicle length`    6.267e+00  6.553e-01   9.563 2.60e-12 ***
  `vehicle weight`    1.245e-03  6.890e-04   1.807   0.0776 .  
`spoiler angle`     6.877e-02  6.653e-02   1.034   0.3069    
`ground clearance`  3.546e+00  5.412e-01   6.551 5.21e-08 ***
  AWD                -3.411e+00  2.535e+00  -1.346   0.1852    
---
  Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Residual standard error: 8.774 on 44 degrees of freedom
Multiple R-squared:  0.7149,	Adjusted R-squared:  0.6825 
F-statistic: 22.07 on 5 and 44 DF,  p-value: 5.35e-11




coil_table%>%summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),Variance_PSI=var(PSI),SD_PSI=sd(PSI))
Mean_PSI   Median_PSI  Variance_PSI   SD_PSI
1 1499.531   1499.747    76.23459    8.731242


t.test(log10(coil_table$PSI),mu=mean(log10(1500)))

One Sample t-test

data:  log10(coil_table$PSI)
t = -0.69294, df = 149, p-value = 0.4894
alternative hypothesis: true mean is not equal to 3.176091
95 percent confidence interval:
  3.175540 3.176356
sample estimates:
  mean of x 
3.175948 
