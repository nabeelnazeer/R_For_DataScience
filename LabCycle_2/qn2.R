library(datasets)

data(mtcars)

colors <- c('violet','grey','black')
cyl_colors <- colors[as.factor(mtcars$cyl)]

filepath <- '/Users/nabeelnazeer/Documents/R_For_DataScience/OUTPUTS/LabCycle_2/mtcars_plot.png'

png(filename = filepath, width = 600, height = 800)

plot(mtcars$disp, mtcars$mpg,
     col = cyl_colors,
     pch = 19,
     xlab = "Displacement (cu.in.)",
     ylab = "Miles per Gallon (MPG)",
     main = "Scatterplot of MPG vs Displacement")



legend("topright", legend = levels(as.factor(mtcars$cyl)),
       col = colors, pch = 19, title = "Cylinders")

dev.off()

