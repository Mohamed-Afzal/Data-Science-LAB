# Read the CSV file (replace 'your_file.csv' with the actual filename)
csv_data <- read.csv("E:\\Afzal Docs\\MCA\\Sem 4\\LAB\\Data Science\\ScatterPlot\\ScatterPlot.csv")

# Load necessary library
library(ggplot2)

# Create a scatter plot
ggplot(csv_data, aes(x=carat, y=price)) +
  geom_point() +
  labs(x="Carat", y="Price") +
  ggtitle("Scatter plot of Price vs Carat")
