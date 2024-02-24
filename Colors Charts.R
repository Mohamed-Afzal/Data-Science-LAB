# Use the mtcars dataset
data(mtcars)

# Create a table of cylinder counts
cyl_table <- table(mtcars$cyl)

# Define colors for each cylinder count
colors <- c("red", "green", "blue")

# Create the bar plot
barplot(cyl_table, col=colors, main="Car Distribution by Cylinder Count", xlab="Number of Cylinders", ylab="Count")

# Add a legend
legend("topright", legend=names(cyl_table), fill=colors)
