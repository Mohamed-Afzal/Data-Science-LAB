# Read the CSV file (replace 'your_file.csv' with the actual filename)
csv_data <- read.csv("C:\Users\USER\Desktop\R AFZ\ScatterPlot.csv")

print(csv_data)

# Create a simple scatter plot (Price vs Carat)
plot(x = csv_data$carat, y = csv_data$price,
     xlab = "Carat", ylab = "Price",
     main = "Price vs Carat")


# Customized scatter plot (green points with 'x' shape)
plot(x = csv_data$carat, y = csv_data$price,
     xlab = "Carat", ylab = "Price",
     col = "green", pch = 4,
     main = "Price vs Carat")

  
# Scatter plot with a regression line
plot(x = csv_data$carat, y = csv_data$price,
     xlab = "Carat", ylab = "Price",
     col = "green", pch = 4,
     main = "Price vs Carat")
abline(lm(csv_data$price ~ csv_data$carat, data = csv_data),
       col = "black")
