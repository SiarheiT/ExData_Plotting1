## plot1 function creates plot 1 for Plotting Assignment 1 for Exploratory Data Analysis 
## Data Science specialization, Coursera
## Uses get_data_for_plotting1.R script to get data set and gets data as a parameter for plot 4


plot1 <- function(data = data.frame()){
	
	# if data is not empty parameter, no need to use get_data_for_plotting1 function 
	# to reuse code in plot 4

	external_data <- TRUE

	# read data if reguired
	if (nrow(data)==0){
		source("get_data_for_plotting1.R")
		data <- get_data_for_plotting1()

		# open png graphic device with default parameters
		png(filename = "plot1.png")
		external_data  <- FALSE
	}
	
	
	#create histogram required
	hist(data$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency")

	if (!external_data){
		#close graphic output
		dev.off()
		message("file plot1.png has been created in your working directory")
	}

}