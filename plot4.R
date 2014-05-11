DT=fread("household_power_consumption.txt")
DT_plot=DT[(DT$Date=="1/2/2007" | DT$Date=="2/2/2007"),]
DT_plot[,DateTime:=paste(Date,Time)]

par(mfrow = c(2, 2),oma=c(0,0.1,0,0))

hist(as.numeric(DT_plot$Global_active_power),col="red",xlab="Global Active Power (kilowatts)"
     ,main="Global Active Power")

plot(strptime(DT_plot$DateTime,"%d/%m/%Y %H:%M:%S"),DT_plot$Voltage,xlab="datetime",ylab="Voltage")

plot(strptime(DT_plot$DateTime,"%d/%m/%Y %H:%M:%S"),DT_plot$Sub_metering_1,type="n",xlab=""
     ,ylab="Energy sub metering")
lines(strptime(DT_plot$DateTime,"%d/%m/%Y %H:%M:%S"),DT_plot$Sub_metering_1)
lines(strptime(DT_plot$DateTime,"%d/%m/%Y %H:%M:%S"),DT_plot$Sub_metering_2, col="red")
lines(strptime(DT_plot$DateTime,"%d/%m/%Y %H:%M:%S"),DT_plot$Sub_metering_3, col="blue")
legend("topright",col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
       ,lty=c(1,1), cex=0.25)

