## plot3 function creates plot 3 for Plotting Assignment 1 for Exploratory Data Analysis 
## Data Science specialization, Coursera
## Uses get_data_for_plotting1.R script to get data set  and gets data as a parameter for plot 4


plot3 <- function(data = data.frame()){

	# if data is not empty parameter, no need to use get_data_for_plotting1 function 
	# to reuse code in plot 4

	external_data <- TRUE

	# read data if reguired
	if (nrow(data)==0){
		source("get_data_for_plotting1.R")
		data <- get_data_for_plotting1()

		# open png graphic device with default parameters
		png(filename = "plot3.png")
		external_data  <- FALSE
	}
	
	#create required plot
	dateandtime <- as.POSIXct(paste(data$Date, data$Time))
	plot(dateandtime, data$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering", col = "black")
	lines(dateandtime, data$Sub_metering_2, type = "l", xlab = "", ylab = "Energy sub metering", col = "red")
	lines(dateandtime, data$Sub_metering_3, type = "l", xlab = "", ylab = "Energy sub metering", col = "blue")

	legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), pch="_____")	

	if (!external_data){
		#close graphic output
		dev.off()
		message("file plot3.png has been created in your working directory")
	}
}