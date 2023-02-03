#Deliverable 1
#Use the library() function to load the dplyr package.
library(dplyr)
#Import and read in the MechaCar_mpg.csv file as a dataframe.
mpg_df_table<- read.csv(file='MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)
#Perform linear regression using the lm() function
lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data=mpg_df_table)
#Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data=mpg_df_table))

#Deliverable 2
#import and read suspension_coil.csv
library(tidyverse)
S_coil_df_table<- read.csv(file='Suspension_Coil.csv',check.names = F,stringsAsFactors = F)

#create total_summary() and summarize all calculation like mean,median,sd on PSI col
total_summary<- S_coil_df_table %>% summarize(PSI_Mean=mean(PSI),
                                             PSI_Median=median(PSI),
                                             PSI_Var=var(PSI),
                                             PSI_Std_Dev=sd(PSI),.groups = 'keep')
#craete lot_summary() and used group_by() and summarize() to group all calculations
lot_summary<-S_coil_df_table%>% group_by(Manufacturing_Lot)%>%summarize(PSI_Mean=mean(PSI),
                                                                        PSI_Median=median(PSI),
                                                                        PSI_Var=var(PSI),
                                                                        PSI_Std_Dev=sd(PSI),.groups = 'keep')



#Deliverable 3
#using the t.test() function to determine if the PSI across all manufacturing lots 
#is statistically different from the population mean of 1,500 pounds per square inch.
t.test(S_coil_df_table$PSI,mu=1500)

#using the t.test() function and its subset() argument to determine if the PSI for each
#manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.
lot1<-subset(S_coil_df_table,Manufacturing_Lot=="Lot1")
lot2<-subset(S_coil_df_table,Manufacturing_Lot=="Lot2")
lot3<-subset(S_coil_df_table,Manufacturing_Lot=="Lot3")

t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)
