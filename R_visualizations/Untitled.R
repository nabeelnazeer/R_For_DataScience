plot(1, 3)


plot (c(1,8), c(3, 10))

plot(c(1, 2, 3, 4, 5), c(3, 7, 8, 9, 12))

x <- c(1, 2, 3, 4, 5)
y <- c(3, 7, 8, 9, 12)

plot(1:10)


plot(1:10, main='my_graph', xlab='the x axis', ylab = 'y-axis', col='red')

plot(1:10, pch=20, cex =1, col = 'blue')

plot(1:10, type='l')

plot(1:10, type='l', col= 'red')


plot(1:10, type='b', lwd=1)

line1 <- c(1,2,3,4,5,10)

line2 <- c(2,5,7,8,9,10)

plot(line1, type='l', col ='red')

lines(line2, type = 'l', col ='brown')

#scatter plots


x <- c(5, 7, 8, 7, 2, 2, 9, 11, 12, 9, 6)
y <- c(99, 86, 87, 88, 111, 103, 87, 94, 78, 77, 85)


plot(x, y, main="Scatter Plot of x and y", xlab="x values", ylab="y values", pch=20, col="blue", cex = 1)


#pie charts

x <- c(26, 74)

pie(x)

x <- c(10, 20, 30, 40)

mylabel = c('apple', 'banana', 'melon', 'peach')

colors <- c('red', 'yellow', 'green', 'pink')

pie(x, label= mylabel, init.angle = 90, main = 'fruits', col = colors)

legend('bottomright', mylabel, fill= colors)




#bar charts

x <- c('A', 'B', 'maja', 'D')

y <- c(2, 4, 6, 8)

barplot(y, names.arg = x, col = 'red')

#horizontal bars
<- c('A', 'B', 'maja', 'D')

y <- c(2, 4, 6, 8)

barplot(y, names.arg = x, col = 'red', horiz =TRUE)

v = c(9,18,21,8,36,22,12,41,31,19)

hist(v, xlab= 'x-axis',ylab = 'y-axis' ,main= 'nabeels histogram', col= 'grey',border = 'black', xlim = c(0,40), ylim = c(0,5), breaks=5)


#boxplot
input <- mtcars[,c('mpg', 'cyl')]
boxplot(mpg ~ cyl, data = mtcars, xlab = "number of cylinders", ylab= 'miles per gallon', main= 'mileage data')

foo <- list(1,2,3,4)
faa <- list(1:4)
print(foo)
print(faa)


# Define the number y
y <- 0

# Use ifelse to assign "positive", "negative", or "zero"
x <- ifelse(y > 0, "positive", ifelse(y < 0, "negative", "zero"))

# Print the result
print(x)  # Output will be "negative"

# Define the character vector
colors <- c("red", "green", "blue", "yellow")

# Convert to a factor with levels ordered alphabetically
f <- factor(colors, levels = sort(unique(colors)))

# Print the factor
print(f)


# Load the mtcars dataset
data(mtcars)
colors <- c('red', 'blue', 'yellow')
# Create a bar plot for the number of cylinders
counts <- table(mtcars$cyl)
print(counts)
barplot(counts, main = "Number of Cylinders in mtcars", xlab = "Cylinders", ylab = "Count", col = "lightblue")

# Add a legend (for unique cylinder values)
legend("topright", legend = names(counts), fill = colors)


ppl <- c(0,1,1,0,0)

ppl_tbl <- factor(ppl, levels = c(0,1), labels = c('rich', 'poor'))

ppl_tbl



chumma.data <- data.frame(
  veruthe_no = c(1:4),
  chumma_letter = c('p','o','0','p'),
  stringsAsFactors = TRUE
)

print(chumma.data)








# Basic Histogram
hist(mtcars$mpg, col="blue", main="Histogram of MPG", xlab="Miles per Gallon", ylab="Frequency")

# Adding more breaks for finer granularity
hist(mtcars$mpg, col="lightblue", breaks=15, main="Histogram of MPG with More Breaks", xlab="Miles per Gallon", ylab="Frequency")

# Adding a legend
legend("topright", legend="MPG Data", fill="lightblue")



# Basic Boxplot of Horsepower
boxplot(mtcars$hp, main="Boxplot of Horsepower", ylab="Horsepower", col="green")

# Adding multiple boxplots (e.g., Horsepower vs Number of Cylinders)
boxplot(hp ~ factor(cyl), data=mtcars, main="Boxplot of Horsepower by Cylinder", xlab="Number of Cylinders", ylab="Horsepower", col=c("lightgreen", "lightblue", "orange"))

# Adding a legend
legend("topright", legend=c("4 Cyl", "6 Cyl", "8 Cyl"), fill=c("lightgreen", "lightblue", "orange"))



# Bar Chart of Car Counts by Cylinder
barplot(table(mtcars$cyl), col="orange", main="Bar Chart of Cylinder Counts", xlab="Number of Cylinders", ylab="Count")

# Stacked Bar Chart of Transmission type (Automatic vs Manual) within Cylinders
barplot(table(mtcars$cyl, mtcars$am), col=c("orange", "lightblue"), main="Stacked Bar Chart by Transmission", xlab="Number of Cylinders", ylab="Count", legend=c("Automatic", "Manual"))






# Basic Line Graph of Horsepower vs Weight
plot(mtcars$wt, col="red", main="Line Graph of Horsepower vs Weight", xlab="Weight", ylab="Horsepower")

# Line Graph with points
lines(mtcars$wt, mtcars$hp, col="blue")
points(mtcars$wt, mtcars$hp, col="blue")

# Adding a legend
legend("topright", legend=c("Horsepower"), col="blue", lty=1)



# Basic Scatterplot of Horsepower vs MPG
plot(mtcars$hp, mtcars$mpg, main="Scatterplot of Horsepower vs MPG", xlab="Horsepower", ylab="Miles per Gallon", pch=19, col="darkgreen")

# Adding a regression line
abline(lm(mpg ~ hp, data=mtcars), col="red")

# Adding a legend
legend("topright", legend="Regression Line", col="red", lty=1)





# Pie Chart of Cylinder Distribution
pie_data <- table(mtcars$cyl)
pie(pie_data, main="Pie Chart of Cylinder Distribution", col=rainbow(length(pie_data)))

# Adding a legend
legend("topright", legend=names(pie_data), fill=rainbow(length(pie_data)))




# Basic Histogram
hist(data_csv$column, col="blue", main="Histogram of Column", xlab="Values", ylab="Frequency")

# Adding breaks and colors
hist(mtcars$hp, col="lightblue", breaks=20, main="Histogram with Breaks", xlab="Values")

# Adding a legend
legend("topright", legend="Column Data", fill="lightblue")

# Boxplot with multiple columns
boxplot(mtcars$hp, mtcars$cyl, names=c("Column 1", "Column 2"), col=c("green", "yellow"))

# Adding a legend
legend("topright", legend=c("Column 1", "Column 2"), fill=c("green", "yellow"))

