#Adding Colors to Charts in R Programming.

# Load the necessary library
#library(ggplot2)
# Use the mtcars dataset
#data(mtcars)
# Create the plot with colors
#ggplot(mtcars, aes(x=factor(cyl), y=mpg, fill=factor(cyl))) +
#  geom_dotplot(binaxis='y', stackdir='center', dotsize = 0.5) +
#  theme_minimal() +
#  labs(x="Number of Cylinders", y="Miles Per Gallon", title="Stacked Dot Plot with Colors") +
#  scale_fill_discrete(name="Number of Cylinders")


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
