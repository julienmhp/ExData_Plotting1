quartz()
par(mfrow=c(2,2))
	plot(epcc$Global_active_power,type="l",ylab="Global Active Power",xlab="",xaxt="n")
	axis(1,at=c(1,1440,2880),label=c("Thursday","Friday","Saturday"))
		plot(epcc$Voltage,type="l",ylab="Voltage",xlab="datetime",xaxt="n")
		axis(1,at=c(1,1440,2880),label=c("Thursday","Friday","Saturday"))
			plot(epcc$Sub_metering_1,type="l",ylab="Energy sub metering",xlab="",xaxt="n")
			lines(epcc$Sub_metering_2,type="l",col="red")
			lines(epcc$Sub_metering_3,type="l",col="blue")
			axis(1,at=c(1,1440,2880),label=c("Thursday","Friday","Saturday"))
			legend("topright",pch="-",col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
				plot(epcc$Global_reactive_power,type="l",ylab="Global_reactive_power",xlab="datetime",xaxt="n")
				axis(1,at=c(1,1440,2880),label=c("Thursday","Friday","Saturday"))
dev.copy(png,file="plot4.png",width=480,height=480)
dev.cur()