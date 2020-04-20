library(readr)
data01 <- read.csv("data/data/inflammation-01.csv", header = FALSE, sep = ',')
class(data01)
#Question: The output of this command is "data.frame"
dim(data01)
#Question 1: The ouput of this command is 60 40, which means it is 60 rows by 40 columns
data[4, 1:10]
data01[4,1:10]
#Question 2:
data01[1:4,1:10]
data01[5:10,1:10]
patient_1 <- data01[1,]
max(patient_1)
#Question 3: Output is 18. Changing max to sum produces:
sum(patient_1)
# sum(patient_1) = 218
max(data01[1,])
#Question 4: min produces minimum value for patient 2 on day 7
min(data01[2,7])
max(data01[1,])
mean(data01[1,])
mean(as.numeric(data01[1,]))
#Question 5: Value returned by above command is 5.45
avg_patient_inflammation <- apply(data01,1,mean)
avg_day_inflammation <- apply(data01,2,mean)
plot(avg_day_inflammation)
max_day_inflammation <- apply(data01,2,max)
plot(max_day_inflammation)
#Question 6: The plot is a symmetrical triangle.
#It looks like this because the daily average inflammation is greatest
#on the 20th day and the least on the first and fortieth day.
min_day_inflammation <- apply(data01,2,min)
plot(min_day_inflammation)
#The plot is again symmetircal, however there are clusters of data points.
#The result is correct, the minimum inflammation is the same overe the days where the
#the data points are grouped.

