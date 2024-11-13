# Load necessary library
library(knitr)

# Load mtcars dataset
data(mtcars)

# Perform Pearson correlation between hp (horsepower) and mpg (miles per gallon)
correlation_result <- cor.test(mtcars$hp, mtcars$mpg, method = "pearson")

# Display correlation result
correlation_result

# Create a correlation table with the correlation coefficient
correlation_table <- data.frame(
  Variables = c("Horsepower (hp)", "Miles per Gallon (mpg)"),
  Correlation_Coefficient = c(correlation_result$estimate, NA),
  p_value = c(correlation_result$p.value, NA)
)

# Print the correlation table using kable for better formatting
kable(correlation_table, caption = "Correlation Table between Horsepower and Miles per Gallon (mpg)")
