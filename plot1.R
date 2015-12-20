##Practica 1 - Exploratoy Data Analysis
##Definim directori treball
adress<-"C:/Users/Joan/Dropbox/Personal Joan/Formacio/Johns Hopkins/Exploratory Data Analysis/Practica 1"
setwd(adress)
##Definim el rang de files que volem llegir
##Llegim Dataset
ConsumeData<-read.table("household_power_consumption.txt",sep=";", nrows=2075259, na.strings = "?",header = TRUE)
##Filtrem per les files necessaries
ConsumeData<-ConsumeData[ConsumeData$Date=="1/2/2007" | ConsumeData$Date=="2/2/2007",]
##Construim el gràfic
hist(ConsumeData$Global_active_power,col="red", main="Global Active Power", xlab="Global Active Power (kilowatt)")
##Creem el fitxer
dev.copy(png,file="plot1.png", width=480, height=480)
##Tanquem la conexió
dev.off()
