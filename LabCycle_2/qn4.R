# Load the mtcars dataset
data(mtcars)

# Calculate mean and standard deviation of mpg
mean_mpg <- mean(mtcars$mpg)
sd_mpg <- sd(mtcars$mpg)

# Define colors for the histogram bins (shades of blue)
breaks <- 10  # Number of bins
colors <- colorRampPalette(c("lightblue", "darkblue"))(breaks)

# Create the histogram
hist(mtcars$mpg, breaks = breaks,
     col = colors[cut(mtcars$mpg, breaks = breaks)],
     main = "Histogram of Miles Per Gallon (MPG)",
     xlab = "Miles Per Gallon (MPG)",
     ylab = "Frequency",
     border = "black")

# Add vertical lines for mean and standard deviation
abline(v = mean_mpg, col = "red", lwd = 2, lty = 2)
abline(v = mean_mpg + sd_mpg, col = "green", lwd = 2, lty = 2)
abline(v = mean_mpg - sd_mpg, col = "green", lwd = 2, lty = 2)

# Add a legend
legend("topright", legend = c("Mean", "Mean ± SD"),
       col = c("red", "green"),
       lwd = 2, lty = c(2, 2))

