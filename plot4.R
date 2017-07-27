## plot4 function creates plot 4 for Plotting Assignment 1 for Exploratory Data Analysis 
## Data Science specialization, Coursera
## Uses get_data_for_plotting1.R script to get data set and reuses some previous functions to create subplots


plot4 <- function(){

	# read data 

	source("get_data_for_plotting1.R")
	data <- get_data_for_plotting1()

	# open png graphic device with default parameters

	png(filename = "plot4.png")
	
	#prepare 2x2 layout

	par(mfrow = c(2, 2))

	#create required plot
	#reusing plot2 function

	source("plot2.R")
	plot2(data)

	#creating new subplot
	
	dateandtime <- as.POSIXct(paste(data$Date, data$Time))
	plot(dateandtime, data$Voltage, type = "l", xlab = "datetime", ylab = "Voltage", col = "black")	

	#reusing plot3 function

	source("plot3.R")
	plot3(data)

	#creating new subplot
	
	plot(dateandtime, data$Global_reactive_power, type = "l", xlab = "datetime", ylab="Global_reactive_power", col = "black")
	


	#close graphic output
	dev.off()
	message("file plot4.png has been created in your working directory")

}