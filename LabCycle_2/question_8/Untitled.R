#install the neccessary libs

install.packages("dplyr")
install.packages("ggplot2")
install.packages("tidyr")
install.packages("knitr")
install.packages("tableone")
install.packages('broom')
install.packages('stargazer')


library(ggplot2)      # For visualization
library(dplyr)        # For data manipulation
library(tidyr)        # For data cleaning
library(knitr)        # For neat tables
library(tableone)     # For creating summary statistics tables
library(broom)        # For tidying statistical outputs into tables
library(stargazer)

titanic_data <- read.csv("/Users/nabeelnazeer/Documents/R_For_DataScience/LabCycle_2/question_9/Titanic-Dataset.csv")

str(titanic_data)

ggplot(titanic_data, aes(x = Parch)) +
  geom_histogram(binwidth = 1, fill = "#69b3a2", color = "black") +
  labs(title = "Histogram of Number of Parents and Children Aboard",
       x = "Number of Parents/Children (parch)",
       y = "Count") +
  theme_minimal()

summary(titanic_data)

survival_rates <- titanic_data %>%
  group_by(Sex, Pclass) %>%
  summarise(Survival_Rate = mean(Survived, na.rm = TRUE)) %>%
  arrange(desc(Survival_Rate))
kable(survival_rates, caption = "Survival Rates by Gender and Class")


# Chi-Square Test to See if Gender Affects Survival
chisq_test_gender <- chisq.test(table(titanic_data$Survived, titanic_data$Sex))
chisq_test_gender_tidy <- tidy(chisq_test_gender)
print(chisq_test_gender)

kable(chisq_test_gender, caption = "Chi-Square Test for Gender and Survival")

anova_test <- aov(Age ~ Pclass, data = titanic_data)
anova_summary <- tidy(anova_test)
kable(anova_summary, caption = "ANOVA Test for Age Across Classes")


# Summary of Age and Fare by Survival Status
age_fare_summary <- titanic_data %>%
  group_by(Survived) %>%
  summarise(
    Avg_Age = mean(Age, na.rm = TRUE),
    SD_Age = sd(Age, na.rm = TRUE),
    Avg_Fare = mean(Fare, na.rm = TRUE),
    SD_Fare = sd(Fare, na.rm = TRUE)
  )
kable(age_fare_summary, caption = "Average Age and Fare by Survival Status")

cor_test <- cor(titanic_data$Age, titanic_data$Fare, use = "complete.obs")
cor_test_table <- data.frame("Correlation between Age and Fare" = cor_test)

kable(cor_test_table, caption = "Correlation between Age and Fare")

# Logistic Regression for Odds of Survival by Gender, Age, Class
logistic_model <- glm(Survived ~ Sex + Age + Pclass, family = binomial, data = titanic_data)
logistic_model_summary <- tidy(logistic_model, exponentiate = TRUE, conf.int = TRUE)

kable(logistic_model_summary, caption = "Logistic Regression: Odds Ratios for Predicting Survival")

# Customized Box Plot
ggplot(titanic_data, aes(x = factor(Survived), y = Age, fill = factor(Survived))) +
  geom_boxplot(outlier.color = "red", outlier.shape = 1) +
  labs(title = "Age Distribution of Survivors and Non-Survivors",
       x = "Survival Status (0 = Non-Survivor, 1 = Survivor)",
       y = "Age") +
  scale_fill_manual(values = c("0" = "#f94144", "1" = "#2a9d8f"), 
                    labels = c("Non-Survivor", "Survivor")) +
  theme_minimal()

