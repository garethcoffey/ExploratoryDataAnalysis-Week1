png(filename="plot2.png")
with(sub, plot(DateTimes, Global_active_power, type="l", 
               ylab="Global Active Power (kilowatts)",
               xlab=""))
dev.off()