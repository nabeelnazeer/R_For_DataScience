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


plot(x, y, main="Scatter Plot of x and y", xlab="x values", ylab="y values", pch=19, col="blue", cex = 2)


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





























