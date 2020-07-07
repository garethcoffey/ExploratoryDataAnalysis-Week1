library(lubridate)
household_power_consumption <- read.csv("~/Downloads/household_power_consumption.txt", sep=";", na.strings="?")
household_power_consumption$Date <- dmy(household_power_consumption$Date)
household_power_consumption$DateTimes <- household_power_consumption$Date + hms(household_power_consumption$Time)

sub <- subset(household_power_consumption, Date == dmy("01/02/2007") | Date == dmy("02/02/2007"))

png(filename="plot1.png")
with(sub, hist(Global_active_power, col="red", main="Global Active Power",
               xlab="Global Active Power (kilowatts)"))
dev.off()