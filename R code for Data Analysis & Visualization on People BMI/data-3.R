# Define the data as a list of vectors
data <- list(
  id = c(1, 2, 3, 4, 5, 6, 7),
  weight = c(20, 27, 24, 22, 23, 25, 28),
  bp = c(140, 130, 120, 134, 100, 116, 143),
  locality = c("urban", "rural", "urban", "urban", "rural", "rural", "urban"),
  smoking = c("no", "yes", "no", "yes", "yes", "no", "yes"),
  tumour = c("small", "small", "large", "small", "large", "small", "large")
)

# Create the dataframe
df <- data.frame(data)

# Print the dataframe for verification
print(df)

# Plot weight vs. blood pressure
plot(df$weight, df$bp, xlab = "Weight", ylab = "Blood Pressure")
title("Weight vs. Blood Pressure")

# Add reference line for visual comparison (optional)
abline(lm(bp ~ weight, data = df), col = "red")

# Create a stacked bar chart using dplyr library (optional)
library(dplyr)

smokers_tumour <- df %>% 
  group_by(smoking, tumour) %>%
  summarise(n = n())

barplot(smokers_tumour$n, names.arg = c("No", "Yes"), xlab = "Smoking", ylab = "Count", 
        col = c("blue", "red"), main = "Smoking vs. Tumour")
legend("topright", legend = c("No Smoking", "Smoking"), fill = c("blue", "red"))

