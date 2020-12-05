#21
x <- seq(60,140,length = 1000)
plot(x,dnorm(x,100,16),type="l",ylim = c(0,0.1),ylab ="Normal Density")
n=4
curve(dnorm(x,100,16/sqrt(n)),col="red", add=TRUE)
n=8
curve(dnorm(x,100,16/sqrt(n)),col="blue", add=TRUE)

#22
x <- seq(0,10,length = 1000)
plot(x,dchisq(x,df=2),type="l",ylim=c(0,0.5))
curve(dchisq(x,df=3),col="red",add=TRUE)
curve(dchisq(x,df=4),col="blue",add=TRUE)
qchisq(0.95,df=2) #5.991465
qchisq(0.95,df=3) #7.814728
qchisq(0.95,df=4) #9.487

#23
chi <- ((8-1)*400)/256
1-pchisq(chi,7)


1-pchisq(20,7)

#24
x<-c(82.03,75.89,88.39,79.59,70.4,88.14,85.13,80.40,90.27,74.17)
mean(x)
sd(x)


  
  