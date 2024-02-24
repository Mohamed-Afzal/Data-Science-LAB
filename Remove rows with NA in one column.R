# Create a sample DataFrame
df <- data.frame(
  ID = c(1, 2, 3, 4),
  Value = c(5, NA, 7, NA)
)

print(df)

# Remove rows with NA values in the 'Value' column
df <- df[complete.cases(df$Value), ]

# Output the updated DataFrame
print(df)

