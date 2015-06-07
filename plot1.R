## Downloading the dataset file
source("downloadFile.R")

## Getting data from dataset file
source("gettingData.R")

## Plotting
print("Generating the histogram ...")
par(mfrow = c(1,1))
hist(hpcSubset$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col = "red")

## Saving to plot1.png file
print("Saving to plot1.png file ...")
dev.copy(png, file = "plot1.png", height = 480, width = 480, units = "px", bg = "transparent")
dev.off()

## Remove dataset objects from R enviroment
source("cleanUp.R")