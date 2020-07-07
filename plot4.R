png("plot4.png")
par(mfrow=c(2,2))
with(sub, plot(DateTimes, Global_active_power, type="l", 
               ylab="Global Active Power",
               xlab=""))
with(sub, plot(DateTimes, Voltage, type="l", xlab="datetime"))
with(sub, plot(DateTimes, Sub_metering_1, type="l", ylab="Energy sub metering", xlab=""))
with(sub, lines(DateTimes, Sub_metering_2, type="l", col="red"))
with(sub, lines(DateTimes, Sub_metering_3, type="l", col="blue"))
legend("topright", col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, box.lty=0)

with(sub, plot(DateTimes, Global_reactive_power, type="l", xlab="datetime"))
dev.off()