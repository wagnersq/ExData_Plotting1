## Downloading the dataset file
source("downloadFile.R")

## Getting data from dataset file
source("gettingData.R")

## Plotting
print("Generating the plot ...")
plot(hpcSubset$Global_active_power ~ hpcSubset$Datetime, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")

## Saving to plot2.png file
print("Saving to plot2.png file ...")
dev.copy(png, file = "plot2.png", height = 480, width = 480)
dev.off()

## Remove dataset objects from R enviroment
source("cleanUp.R")