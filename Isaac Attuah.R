my_data <- read.csv(file.choose())
head(my_data)

#observed positive correlation
scatter.smooth(x=my_data$Total_Screen_Time, y=my_data$Social_Media, main=" Average Social Media Time ~ Average Screen Time",xlab="Average Screen Time",ylab="Average Social Media Tiem")

#box plots
par(mfrow=c(1, 2))  # divide graph area in 2 columns
boxplot(my_data$Total_Screen_Time, main="Average Total Screen Time")  
boxplot(my_data$Social_Media, main="Average Social Media Time")

#Outlier Rows
#Outlier rows for Average Total Screen Time 
boxplot.stats(my_data$Total_Screen_Time)$out

#Outlier rows for Average Social Media Time
boxplot.stats(my_data$Social_Media)$out

#Density Plot
library(e1071)
par(mfrow=c(1, 2))  # divide graph area in 2 columns
plot(density(my_data$Total_Screen_Time), main="Density Plot: Average Screen Time", ylab="Frequency", sub=paste("Skewness:", round(e1071::skewness(cars$speed), 2)))  
polygon(density(my_data$Total_Screen_Time), col="gold")
plot(density(my_data$Social_Media), main="Density Plot:Average Social Media Time", ylab="Frequency", sub=paste("Skewness:", round(e1071::skewness(cars$dist), 2)))  
polygon(density(my_data$Social_Media), col="gold")

#correlation
#We observe a strong positive correlation between the two variables
cor(my_data$Total_Screen_Time, my_data$Social_Media)

cor.test(my_data$Total_Screen_Time, my_data$Social_Media)

#Scatter Plot
plot(my_data)
plot(x=my_data$Total_Screen_Time, y = my_data$Social_Media, xlab = "Average Total Screen Time", ylab = "Average Social Media Time", main = "Social Media ~ Screen Time")

#Linear Model
linearmod = lm(my_data$Social_Media~my_data$Total_Screen_Time)
abline(linearmod, col ="red")
summary(linearmod) 
#Since p-value is below the 0.05 threshhold, the model is statistically significant
#We can safely reject the null hypothesis that the coefficient ?? of the predictor is zero
#We can go ahead and use it to predict (or estimate) the dependent variable.