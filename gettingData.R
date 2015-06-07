## Getting the entire dataset
print("Reading the dataset file ...")
hpc <- read.csv(file = "./data/household_power_consumption.txt", header = TRUE, sep = ";", nrow(2075259), ncol(9), na.strings = "?")

## Extract the date based subset 
hpc$Date <- as.Date(hpc$Date, format="%d/%m/%Y")
hpcSubset <- subset(hpc, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))

## Converting dates
datetime <- paste(as.Date(hpcSubset$Date), hpcSubset$Time)
hpcSubset$Datetime <- as.POSIXct(datetime)