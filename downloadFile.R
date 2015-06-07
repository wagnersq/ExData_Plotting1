olddir <- getwd()

targetDir <- "./data"

## Create data dir if it not exists
if(!file.exists(targetDir)){
  ir.create(targetDir)
}

## Try to change to data dir
if(file.exists(targetDir)){
  setwd(targetDir)

  downloadedFileZip <- "household_power_consumption.zip"
  
  ## Download the dataset zip file if it not exists
  if(!file.exists(downloadedFileZip)){
    print("Downloading the dataset zip file ...")
    fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
    download.file(fileUrl, destfile=downloadedFileZip, method="curl")
  } else {
    print("* Dataset zip file already exist ...")
    print("Uncompressing the dataset zip file ...")
    uncompressedFileDataset <- unzip(downloadedFileZip, list=TRUE)$Name[1]
    unzip(downloadedFileZip, files=uncompressedFileDataset, exdir=".", overwrite=TRUE) 
  }
  setwd(olddir)
} else {
    error("Error while creating data directory.")
}