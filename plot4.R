# Plot 2
# Read data
#make sure the data file is in the same folder as the r source file
initial = read.table("household_power_consumption.txt", nrows=10, sep=";",header=TRUE,na.strings="?")
classes = sapply(initial,class)
setAs("character","myDate", function(from) as.Date(from, format="%d/%m/%Y") )
classes[1:2]=c("myDate","character")
tabAll = read.table("household_power_consumption.txt",colClasses = classes, sep=";",header=TRUE,na.strings="?")
df = subset(tabAll,(Date>="2007-02-01" & Date<="2007-02-02"))
df$Time=as.POSIXct(paste(df$Date, df$Time), format="%Y-%m-%d %H:%M:%S")

png("plot4.png", width=580, height=580)
par(mfrow=c(2,2),mar=c(4,4,5,0.5),bg="transparent")
#plot1
plot(df$Time,df$Global_active_power,type="n",xlab='',ylab = "Global Active Power")
lines(df$Time,df$Global_active_power)
#plot2
plot(df$Time,df$Voltage,type="n",xlab='datetime',ylab = "Voltage")
lines(df$Time,df$Voltage)
#plot3
plot(df$Time,df$Sub_metering_1,type="n",xlab='',ylab = "Energy sub metering")
lines(df$Time,df$Sub_metering_1,col="black")
lines(df$Time,df$Sub_metering_2,col="red")
lines(df$Time,df$Sub_metering_3,col="blue")
legend("topright",legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=c(1,1,1),bty = "n")
#plot4
plot(df$Time,df$Global_reactive_power,type="n",xlab='datetime',ylab = "Global_reactive_power")
lines(df$Time,df$Global_reactive_power)
dev.off()
