install.packages("GGally")

# Load necessary libraries
library(datasets)     # For the iris dataset
library(dplyr)        # For data manipulation
library(ggplot2)      # For visualizations
library(GGally)       # For pair plot
library(stats)        # For statistical tests
library(knitr)

# Load the Iris dataset
data("iris")

# Display the first few rows of the dataset
head(iris)

# Summary statistics by species
summary_stats <- iris %>%
  group_by(Species) %>%
  summarise(
    Mean_Sepal_Length = mean(Sepal.Length),
    Mean_Sepal_Width = mean(Sepal.Width),
    Mean_Petal_Length = mean(Petal.Length),
    Mean_Petal_Width = mean(Petal.Width),
    SD_Sepal_Length = sd(Sepal.Length),
    SD_Sepal_Width = sd(Sepal.Width),
    SD_Petal_Length = sd(Petal.Length),
    SD_Petal_Width = sd(Petal.Width)
  )

# Display summary statistics
print(summary_stats)
kable(summary_stats, caption = "Summary Statistics for Iris Dataset by Species")

# Boxplot to visualize sepal length across species
ggplot(iris, aes(x = Species, y = Sepal.Length, fill = Species)) +
  geom_boxplot() +
  labs(title = "Sepal Length by Species", x = "Species", y = "Sepal Length") +
  theme_minimal()

# Perform one-way ANOVA
anova_result <- aov(Sepal.Length ~ Species, data = iris)

# Display ANOVA table
summary(anova_result)


# Create a pair plot to visualize relationships between variables
ggpairs(iris, aes(color = Species, alpha = 0.6)) +
  labs(title = "Pair Plot of Iris Dataset Variables by Species") +
  theme_minimal()

# Perform Tukey's HSD test
tukey_result <- TukeyHSD(anova_result)

# Display Tukey's HSD test result
print(tukey_result)





