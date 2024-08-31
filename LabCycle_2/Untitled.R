# Load the mtcars dataset
data(mtcars)

# Calculate mean and standard deviation of mpg
mean_mpg <- mean(mtcars$mpg)
sd_mpg <- sd(mtcars$mpg)

# Create the histogram
hist(mtcars$mpg, 
     breaks = 10, 
     col = colorRampPalette(c("lightblue", "darkblue"))(10),
     main = "Histogram of Miles Per Gallon (MPG)",
     xlab = "Miles Per Gallon",
     ylab = "Frequency")

# Add mean and standard deviation to the plot
text(x = 30, y = 8, 
     labels = paste("Mean =", round(mean_mpg, 2), "\nSD =", round(sd_mpg, 2)),
     pos = 4)

# Add a legend
legend("topright", 
       legend = c("MPG Frequency"),
       fill = "lightblue",
       border = "black")