# Create a sample matrix
mat <- matrix(c(3, 6, 2, 8, 1, 4), nrow = 2)

# Find the row and column index of the maximum value
max_index <- which(mat == max(mat), arr.ind = TRUE)

# Find the row and column index of the minimum value
min_index <- which(mat == min(mat), arr.ind = TRUE)

# Output the results
cat("Maximum value:", max(mat), "\n")
cat("Row index of maximum value:", max_index[1], "\n")
cat("Column index of maximum value:", max_index[2], "\n\n")

cat("Minimum value:", min(mat), "\n")
cat("Row index of minimum value:", min_index[1], "\n")
cat("Column index of minimum value:", min_index[2], "\n")
