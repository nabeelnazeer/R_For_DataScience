library(ggplot2)

data <- read.csv("LabCycle_3/house-prices-advanced-regression-techniques/train.csv")

str(data)

model <- lm(SalePrice ~ GrLivArea, data = data)

coefficients <- summary(model)$coefficients
slope <- coefficients[2, 1]  # Slope
intercept <- coefficients[1, 1]  # Intercept

cat("Slope (Coefficient of size):", slope, "\n")
cat("Intercept:", intercept, "\n")

ggplot(data, aes(x = GrLivArea, y = SalePrice)) +
  geom_point(color = "blue", alpha = 0.5) +  # Scatter plot
  geom_smooth(method = "lm", color = "red", se = FALSE) +  # Regression line
  labs(title = "House Prices vs Size",
       x = "Size (in square feet)",
       y = "Price") +
  theme_minimal()