# Load necessary libraries
library(datasets)


data(iris)


file_path <- "/Users/nabeelnazeer/Documents/R_For_DataScience/OUTPUTS/LabCycle_2/iris_scatterplot.png"

# Alternatively, using file.path() for better cross-platform compatibility
file_path <- file.path("C:", "Users", "YourName", "Documents", "RPlots", "iris_scatterplot.png")

# Open a graphics device to save the plot
png(filename = file_path, width = 10, height = 6, units = 'in', res = 300)

# Create a scatterplot
plot(iris$Sepal.Length, iris$Petal.Length,
     xlab = 'Sepal Length (cm)', ylab = 'Petal Length (cm)',
     main = 'Scatterplot of Sepal Length vs Petal Length',
     pch = 19, col = as.numeric(iris$Species))

# Close the graphics device
dev.off()

# Notify user of saved plot
cat("Plot saved to:", file_path, "\n")
