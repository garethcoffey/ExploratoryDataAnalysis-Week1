library(lubridate)
household_power_consumption <- read.csv("~/Downloads/household_power_consumption.txt", sep=";", na.strings="?")
household_power_consumption$Date <- dmy(household_power_consumption$Date)
household_power_consumption$DateTimes <- household_power_consumption$Date + hms(household_power_consumption$Time)

sub <- subset(household_power_consumption, Date == dmy("01/02/2007") | Date == dmy("02/02/2007"))


png(filename="plot3.png")
with(sub, plot(DateTimes, Sub_metering_1, type="l", ylab="Energy sub metering", xlab=""))
with(sub, lines(DateTimes, Sub_metering_2, type="l", col="red"))
with(sub, lines(DateTimes, Sub_metering_3, type="l", col="blue"))
legend("topright", col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1)
dev.off()