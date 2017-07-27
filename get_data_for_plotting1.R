## get_data_for_plotting1 function provides data set for Plotting Assignment 1 for Exploratory Data Analysis 
## Data Science specialization, Coursera

get_data_for_plotting1 <- function(){

	# reading all data 
	d<-read.table("household_power_consumption.txt", sep = ";", header = TRUE, stringsAsFactors = FALSE, na.strings="?")
	
	#converting Date into date format
	d<- transform(d, Date = as.Date(d$Date, format="%d/%m/%Y"))

	# selecting data with dates between 2007/02/01 and 2007/02/02 to make further analysis
	x<- subset(d, Date == "2007-02-01" | Date == "2007-02-02")

	#release memory by removing data table d - for using in console mode
	#rm(d)	
	
	x
}