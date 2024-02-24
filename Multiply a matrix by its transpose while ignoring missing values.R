# Create a sample matrix with missing values
mat <- matrix(c(1, 2, NA, 4, NA, 6, 7, 8, 9), nrow = 3, byrow = TRUE)
print(mat)

# Replace missing values with 0
mat[is.na(mat)] <- 0

# Transpose the matrix
mat_transpose <- t(mat)
print(mat_transpose)

# Multiply the matrix by its transpose, now ignoring missing values
result <- mat %*% mat_transpose

# Output the result
print(result)