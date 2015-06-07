## Downloading the dataset file
source("downloadFile.R")

## Getting data from dataset file
source("gettingData.R")

## Plotting
print("Generating the plot ...")
with(hpcSubset, {
  plot(Sub_metering_1 ~ Datetime, type="l", xlab="", ylab="Energy sub metering", )
  lines(Sub_metering_2 ~ Datetime, col = "red")
  lines(Sub_metering_3 ~ Datetime, col = "blue")
})
legend("topright", col = c("black", "red", "blue"), lty = 1, lwd = 2, legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

## Saving to plot3.png file
print("Saving to plot3.png file ...")
dev.copy(png, file = "plot3.png", height = 480, width = 480)
dev.off()

## Remove dataset objects from R enviroment
source("cleanUp.R")