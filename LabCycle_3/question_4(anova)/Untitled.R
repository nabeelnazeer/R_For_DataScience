install.packages("car")

# Load required libraries
library(ggplot2)
library(dplyr)
library(car)
library(knitr)

# Load the dataset
data(mtcars)

# 1. Descriptive Statistics
gear_summary <- mtcars %>%
  group_by(gear) %>%
  summarise(
    count = n(),
    mean_disp = mean(disp),
    sd_disp = sd(disp),
    se_disp = sd_disp/sqrt(count)
  )

print("Summary Statistics:")
print(gear_summary)
kable(gear_summary, caption = "summary statistics")

# 2. Box Plot
boxplot <- ggplot(mtcars, aes(x=as.factor(gear), y=disp)) +
  geom_boxplot(fill="lightblue", alpha=0.7) +
  geom_jitter(width=0.2, alpha=0.5, color="darkblue") +
  labs(title="Distribution of Displacement by Number of Gears",
       x="Number of Gears",
       y="Displacement (cu.in.)") +
  theme_minimal()

print(boxplot)

# 3. Check ANOVA assumptions

# 3.1 Normality test for each group
cat("\nNormality Tests (Shapiro-Wilk):\n")
for(i in unique(mtcars$gear)) {
  subset_data <- mtcars$disp[mtcars$gear == i]
  test_result <- shapiro.test(subset_data)
  cat(sprintf("Gear %d: W = %.3f, p = %.3f\n", 
              i, test_result$statistic, test_result$p.value))
}

# 3.2 Homogeneity of variance test
levene_test <- leveneTest(disp ~ as.factor(gear), data=mtcars)
print("\nLevene's Test for Homogeneity of Variance:")
print(levene_test)

# 4. Perform one-way ANOVA
anova_result <- aov(disp ~ as.factor(gear), data=mtcars)
print("\nANOVA Results:")
print(summary(anova_result))

# 5. Post-hoc analysis (if ANOVA is significant)
tukey_result <- TukeyHSD(anova_result)
print("\nTukey's HSD Post-hoc Test:")
print(tukey_result)

# Create visualization of Tukey's results
plot(tukey_result)