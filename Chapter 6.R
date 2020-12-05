##Info on Iris Library
##?iris
mydata <- iris

#First 6 observations of the data set
head(mydata)

#Variable observations
head(mydata,10)

#Extract a given column
sepal_length = mydata$Sepal.Length

mean(sepal_length)
median(sepal_length)
#mean and median show that mean is skewed to the right since mean > median

hist(sepal_length)
#Histogram shows data is skewed to the right

range(sepal_length)
var(sepal_length)
sd(sepal_length)



#Upper Quantile (75)
quantile(sepal_length, 0.75)

#Lower Quantile (75)
quantile(sepal_length, 0.25)

#Interquartile Range
IQR(sepal_length)

#
summary(sepal_length)
hist(sepal_length)
#Box Plot
#You need to calculate median, upper and lower quantile to construct a box plot
#Upper Quantile (75) (Upper line)
#Median (Middle Line)
#Lower Quantile (25) (Lower line)
#Whiskers (1QR * 1.5) which stops at maximum and minimum

boxplot(sepal_length, main ="Sepal Length")
#Upper Whisker is longer hence skewed to the right

#Outlier simulation
x<-rnorm(200,0,2)
boxplot(x)
hist(x)
range(x)

boxplot(mydata$Sepal.Length~Species,
        data=mydata,
        main ="Iris Data",
        col = c("red","blue","gold"),
        ylab="Sepal.length")

# '~' sign does the divisions by species

#To split histograms you need to install FSA
hist(mydata$Sepal.Length~Species,
     data=mydata,
     xlab="Sepal Length",
     col="lightblue",
     border="blue",
     nrow=1,
     ncol=3)

# QQ Plot used to prepare two probability distributions
# Similar (Lie in Y=X axis)
# Red lines points (Points sampled from the normal distribution)
qqnorm(mydata$Sepal.Length, pch = 1, frame = FALSE)
qqline(mydata$Sepal.Length, col = "red", lwd = 2)




