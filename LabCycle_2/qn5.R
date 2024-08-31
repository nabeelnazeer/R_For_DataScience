
data(mtcars)


mtcars$gear <- as.factor(mtcars$gear)


boxplot(mtcars$hp ~ mtcars$gear,
        main = "Boxplot of Horsepower by Number of Gears",
        xlab = "Number of Gears",
        ylab = "Horsepower (hp)",
        col = c("lightblue", "lightgreen", "lightpink"))


points(jitter(as.numeric(mtcars$gear)), mtcars$hp, 
       pch = as.numeric(mtcars$gear) + 12,  
       col = as.numeric(mtcars$gear))


outliers <- boxplot.stats(mtcars$hp)$out
outliers_index <- which(mtcars$hp %in% outliers)


text(x = jitter(as.numeric(mtcars$gear[outliers_index])),
     y = mtcars$hp[outliers_index],
     labels = rownames(mtcars)[outliers_index],
     pos = 4, cex = 0.8, col = "red")


legend("topleft", legend = levels(mtcars$gear),
       pch = as.numeric(levels(mtcars$gear)) + 12,
       col = as.numeric(levels(mtcars$gear)),
       title = "Number of Gears")
