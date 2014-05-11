DT=fread("household_power_consumption.txt")
DT_plot=DT[(DT$Date=="1/2/2007" | DT$Date=="2/2/2007"),]
par(oma=c(0,0.1,0,0))
hist(as.numeric(DT_plot$Global_active_power),col="red",xlab="Global Active Power (kilowatts)",main="Global Active Power")
dev.copy(png,file="plot1.png")
dev.off()
