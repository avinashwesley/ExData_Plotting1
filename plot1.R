# Plot 1
# Read data
#make sure the data file is in the same folder as the r source file
initial = read.table("household_power_consumption.txt", nrows=10, sep=";",header=TRUE,na.strings="?")
classes = sapply(initial,class)
setAs("character","myDate", function(from) as.Date(from, format="%d/%m/%Y") )
classes[1:2]=c("myDate","character")
tabAll = read.table("household_power_consumption.txt",colClasses = classes, sep=";",header=TRUE,na.strings="?")
df = subset(tabAll,(Date>="2007-02-01" & Date<="2007-02-02"))
df$Time=as.POSIXct(paste(df$Date, df$Time), format="%Y-%m-%d %H:%M:%S")


hist(df$Global_active_power,col="red",xlab="Global Active Power (kilowatts)", main = "Global Active Power")

dev.copy(png, file="plot1.png")
dev.off()

