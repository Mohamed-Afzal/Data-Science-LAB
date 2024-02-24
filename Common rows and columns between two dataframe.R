#How to find common rows and columns between two dataframe in R?
  
# Create two example dataframes
df1 <- data.frame(A = 1:3, B = 4:6, C = 7:9)
df2 <- data.frame(B = 1:3, C = 4:6, D = 7:9)

# Find common columns
common_columns <- intersect(names(df1), names(df2))
print(paste("Common columns:", paste(common_columns, collapse = ", ")))

# Find common rows
common_rows <- intersect(rownames(df1), rownames(df2))
print(paste("Common rows:", paste(common_rows, collapse = ", ")))
  
  