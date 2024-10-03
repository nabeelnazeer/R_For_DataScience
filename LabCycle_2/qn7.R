# Install required packages
install.packages(c("forecast", "tseries", "ggplot2", "zoo"))

# Load the packages
library(forecast)
library(tseries)
library(ggplot2)
library(zoo)
getwd()

setwd("/Users/nabeelnazeer/Documents/R_For_DataScience")


data <- read.csv("LabCycle_2/time-series-19-covid-combined.csv")

str(data)

data$Date <- as.Date(data$Date, format = "%Y-%m-%d")

# Aggregate global confirmed cases by date
global_data <- aggregate(cbind(Confirmed, Recovered, Deaths) ~ Date, data, sum)
ggplot(global_data, aes(x = Date, y = Confirmed)) +
  geom_line(color = "blue") +
  labs(title = "Global Confirmed COVID-19 Cases Over Time",
       x = "Date",
       y = "Confirmed Cases") +
  theme_minimal()

melted_data <- melt(global_data, id = "Date")

# Plot all variables (Confirmed, Recovered, Deaths)
ggplot(melted_data, aes(x = Date, y = value, color = variable)) +
  geom_line() +
  labs(title = "Global COVID-19 Cases Over Time",
       x = "Date",
       y = "Count") +
  theme_minimal()

