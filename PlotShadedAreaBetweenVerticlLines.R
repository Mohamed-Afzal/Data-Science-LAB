#Plot Shaded Area between vertical lines in R.


# Example data
x <- 1980:2019
y <- runif(40, 0, 1)

# Create a plot with the data
plot(x, y, type = "l")

# Add vertical lines
abline(v = 1990, col = "red")
abline(v = 2001, col = "red")

# Shade the area between the lines
rect(xleft = 1999, xright = 2001, ybottom = par("usr")[3], ytop = par("usr")[4],
     border = NA, col = adjustcolor("blue", alpha = 0.3))

library(ggplot2)

# Create a data frame (you can replace this with your actual data)
df <- data.frame(x = 1980:2019, y = runif(40, 0, 1))

# Create the plot
ggplot(df, aes(x = x, y = y)) +
  geom_line(color = "darkred") +
  geom_rect(aes(xmin = 1990, xmax = 2001, ymin = -Inf, ymax = Inf),
            fill = "red", alpha = 0.3) +
  theme_classic()

