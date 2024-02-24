# Load the required library
library(ggplot2)

# Generate some sample data
data <- data.frame(value = rnorm(1000))

# Create a histogram
histogram <- ggplot(data, aes(x = value)) +
  geom_histogram(binwidth = 0.5, fill = "lightblue", color = "black") +
  labs(title = "Histogram with Mean and Median") +
  xlab("Values") +
  ylab("Frequency")

# Add mean and median annotations
histogram + 
  geom_text(aes(x = mean(value), y = 30, label = paste("Mean =", round(mean(value), 2))), color = "red") +
  geom_text(aes(x = median(value), y = 50, label = paste("Median =", round(median(value), 2))), color = "blue")
