## Downloading the dataset file
source("downloadFile.R")

## Getting data from dataset file
source("gettingData.R")

## Plotting
print("Generating the plot ...")
## Two row and two columns
## Margin bottom = 4, left = 4, top = 2, right = 1
## Outer margin
par(mfrow=c(2,2), mar=c(4,4,1,1), oma=c(0,0,2,0))
with(hpcSubset, {
  plot(Global_active_power ~ Datetime, type = "l", xlab = "", ylab = "Global Active Power" )
  plot(Voltage ~ Datetime, type = "l", xlab = "", ylab = "Voltage")
  plot(Sub_metering_1 ~ Datetime, type = "l", xlab = "", ylab = "Energy sub metering")
  lines(Sub_metering_2 ~ Datetime, col = "red")
  lines(Sub_metering_3 ~ Datetime, col = "blue")
  legend("topright", col = c("black", "red", "blue"), lty = 1, lwd = 2, bty = "n", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
  plot(Global_reactive_power ~ Datetime, type = "l", xlab = "", ylab = "Global_reactive_power")
})

## Saving to plot4.png file
print("Saving to plot4.png file ...")
dev.copy(png, file = "plot4.png", height = 480, width = 480, units = "px", bg = "transparent")
dev.off()

## Remove dataset objects from R enviroment
source("cleanUp.R")