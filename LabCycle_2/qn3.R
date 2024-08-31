# Load the mtcars dataset
# Load the mtcars dataset
data(mtcars)

# Create a contingency table of counts by cylinder and transmission type
car_counts <- table(mtcars$cyl, mtcars$am)

# Plotting
barplot(car_counts, main="Number of Cylinders in Cars by Transmission Type",
        xlab="Number of Cylinders", ylab="Count",
        col=c("red", "blue",'green'), beside=TRUE, # Colors for automatic and manual
        legend=rownames(car_counts))

# No need for a separate legend call; the legend is automatically generated

