#Plot Shaded Area between vertical lines in R.

# Load the required library
library(ggplot2)

# Create a sample data frame with vertical lines
lines_data <- data.frame(
  x_start = c(2, 5, 8),
  x_end = c(3, 6, 9),
  y = c(0, 0, 0)
)

# Create a sample data frame for shading area
shade_data <- data.frame(
  x_start = c(2, 5, 8),
  x_end = c(3, 6, 9),
  y_min = c(0, 0, 0),
  y_max = c(5, 7, 4)
)

# Plot the shaded area and vertical lines
ggplot() +
  geom_rect(data = shade_data, aes(xmin = x_start, xmax = x_end, ymin = y_min, ymax = y_max), fill = "lightblue", alpha = 0.3) +
  geom_segment(data = lines_data, aes(x = x_start, xend = x_end, y = y, yend = y, color = "Vertical Lines"), size = 1) +
  scale_color_manual(values = "red") +
  theme_minimal() +
  labs(title = "Shaded Area between Vertical Lines", x = "X-axis", y = "Y-axis")







