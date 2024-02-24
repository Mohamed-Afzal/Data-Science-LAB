set.seed(658329)
x <- round(rnorm(100, 10, 5))
hist(x)  # Draw histogram
abline(v = mean(x), col = "red", lwd = 3)
text(x = mean(x) * 1.7, y = mean(x) * 1.7, paste("Mean =", mean(x)), col = "red", cex = 2)
hist(x)  # Draw histogram
abline(v = median(x), col = "red", lwd = 3)
text(x = median(x) * 1.7, y = median(x) * 1.7, paste("Median =", median(x)), col = "red", cex = 2)
install.packages("ggplot2")  # Install ggplot2 package
library("ggplot2")           # Load ggplot2 package
ggp <- ggplot(data.frame(x), aes(x)) +
  geom_histogram(bins = 10)
ggp + geom_vline(xintercept = mean(x), col = "red", lwd = 3) +
  annotate("text", x = mean(x) * 1.7, y = mean(x) * 1.7,
           label = paste("Mean =", mean(x)), col = "red", size = 8)
