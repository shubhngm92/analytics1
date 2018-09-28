#regression analysis
#simple linear with 1 IV and 1 DV

data(women)
women
names(women)
str(women)

cov(women$height,women$weight)
#69 ; which shows positive relationship between height and weight

cor(women$height,women$weight)
#0.995 : which shows strong and positive relationship btwn height and wgt
0.995^2 #also equal R^2 value in this case(Simple linear regression)

plot(x=women$height,y=women$weight)
abline(lm(weight ~ height,data=women),col='red')
names(women) #x-IV, y-DV
fit1 = lm(weight ~ height,data=women) #creating a model
summary(fit1) #summary of model1

#Ho : (F Test) : No relationship between Y and any X
#Ha : THere is relationship 

attributes(fit1)

#coefficients
coef(fit1)
#Y = -87 + 3.4*x #no extrapolations
(Y = -87 + 3.4*20) #weight cannot be negative
(Y = -87 + 3.4*58)
(Y = -87 + 3.4*72)
range(women(height))

#prediction : for height = 65,66

(new1 = data.frame(height=c(65,66)))
new1
(p1=predict(fit1,newdata = new1))
cbind(new1,p1)        #136.7333,140.1833

plot(fit1)












