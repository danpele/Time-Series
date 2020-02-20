##########################################################
#Name: time_series_decomposition
#Description : Decomposes a time series into components.
#Keywords : time series, components
#See also : 
#Author : Daniel Traian Pele
#Submitted : Tuesday, 19 February 2019, by Daniel Traian Pele
########################################################

#read the time series 
dataset<-read.csv("D:/CURSURI/SERII DE TIMP/passengers_RO.csv", header=TRUE)

#display the first obs
head(dataset)

#keep only the time series of passengers
data<-dataset[2]
head(data)

#transform into time series object
y<-ts(data, frequency=12, start=c(2005,1))
y

#plot the time series
plot.ts(y)


#read the time series 
dataset<-read.csv("D:/CURSURI/SERII DE TIMP/passengers_RO.csv", header=TRUE)

#display the first obs
head(dataset)

#keep only the time series of passengers
data<-dataset[2]
head(data)

#transform into time series object
y<-ts(data, frequency=12, start=c(2005,1))
y

plot(data)
#plot the time series
plot.ts(y)


#install.packages("TTR")
library(TTR)

#seasonal moving average 12
dataSMA12 <- SMA(y,n=12)
plot.ts(dataSMA12)



#time series decomposition
datacomponents <- decompose(y, "multiplicative")

datacomponents

#plot the components
plot(datacomponents)


#time series decomposition
datacomponents <- decompose(y, "additive")

datacomponents

#plot the components
plot(datacomponents)

#Holt-Winters filtering
y_forecasts <- HoltWinters(y, beta=FALSE, gamma=FALSE)
y_forecasts
plot(y_forecasts)