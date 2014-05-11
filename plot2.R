DT=fread("household_power_consumption.txt")
DT_plot=DT[(DT$Date=="1/2/2007" | DT$Date=="2/2/2007"),]
par(oma=c(0,0.1,0,0))
DT_plot[,DateTime:=paste(Date,Time)]
plot(strptime(DT_plot$DateTime,"%d/%m/%Y %H:%M:%S"),as.numeric(DT_plot$Global_active_power),type="n",xlab="",ylab="Global Active Power (kilowatts)")
lines(strptime(DT_plot$DateTime,"%d/%m/%Y %H:%M:%S"),as.numeric(DT_plot$Global_active_power))
dev.copy(png,file="plot2.png")
dev.off()
