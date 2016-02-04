# Plot 1
# Read data
getwd()
setwd("C:/Users/h122459/Desktop/Research/Coursera/Course4PrinciplesOfAnalyticGraphics/Assignment1")
initial = read.table("household_power_consumption.txt", nrows=10, sep=";",header=TRUE,na.strings="?")
classes = sapply(initial,class)
setAs("character","myDate", function(from) as.Date(from, format="%d/%m/%Y") )
setAs("character","myTime", function(from) strptime(from, format="%H:%M:%S") )
classes[1:2]=c("myDate","myTime")
tabAll = read.table("household_power_consumption.txt",colClasses = classes, sep=";",header=TRUE,na.strings="?")
df = subset(tabAll,(Date>="2007-02-01" & Date<="2007-02-02"))
head(df)
tail(df)

hist(df$Global_active_power,col="red",xlab="Global Active Power (kilowatts)", main = "Global Active Power")

a = strptime("17:24:00",format="%H:%M:%S")
b = as.Date("16/12/2006",format="%d/%m/%Y")

class(b)
x = rnorm(100)
hist(x)
y = rnorm(100)
plot(x,y)
par(mar = c(2,2,2,2))
plot(x,y)
par(mar = c(4,4,2,2))
plot(x,y)
plot(x,y,pch=2)
plot(x,y,pch=4)
plot(x,y,pch=20)
example(points)
title("scatter plot")
text(0,0,"label 2")
legend("topleft",legend="data")
legend("topleft",legend="data",pch=20)
fit=lm(y~x)
abline(fit)
abline(fit,lwd=3,col="blue")
plot(x,y,xlab="weight",ylab="Height", main="Scatterplot",pch=20)
par(mfrow=c(2,1))
plot(x,y)
par("mar")
par(mar=c(2,2,1,1))
par(mar=c(1,1))
x = rnorm(100)
y = x+rnorm(100)
g = gl(2,50,labels=c("male","female"))
str(g)
plot(x,y,type="n")
points(x[g=="male"],y[g=="male"],col="green")
points(x[g=="female"],y[g=="female"],col="blue",pch=19)
library(swirl)
#install.packages("swirl")
ls()
rm(list=ls())
install_from_swirl("Exploratory Data Analysis")
install_from_swirl("Exploratory Data Analysis")
getwd()
install_course_zip("ExpAnalysis.zip", multi=TRUE, which_course="Exploratory Data Analysis")

options(internet.info = 0)

install_course_zip(file.choose(), multi=TRUE, which_course="Exploratory Data Analysis")

,proxy_settings("34.36.124.22", 80, "h122459", "jL9ctn8"))

install_course_zip(file.path("~", "Downloads", "swirl_courses-master.zip"), multi=TRUE, which_course="Exploratory Data Analysis",)

install_course_directory("~/R_Programming")

uninstall_all_courses()

packageVersion("swirl")

library(RCurl)
opts <- list(
        proxy         = "34.36.124.22", 
        proxyusername = "HALAMERICA\\H122459", 
        proxypassword = "jL9ctn8", 
        proxyport     = 80
)
getURL("http://stackoverflow.com",.opts=opts)
getURL("http://stackoverflow.com")
file.edit('~/.Renviron')