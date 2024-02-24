# Read the CSV file (replace 'your_file.csv' with the actual filename)
csv_data <- read.csv("C:\\Users\\USER\\Desktop\\R AFZ\\ScatterPlot\\ScatterPlot.csv")

# Load necessary library
library(ggplot2)



# Create a scatter plot
ggplot(csv_data, aes(x=carat, y=price)) +
  geom_point() +
  labs(x="Carat", y="Price") +
  ggtitle("Scatter plot of Price vs Carat")
