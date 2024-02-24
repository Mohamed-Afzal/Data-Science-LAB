# Sample DataFrame
df <- data.frame(
  ID = c(1, 2, 3),
  Text = c("apple banana cherry", "banana cherry", "apple cherry")
)

# Character to count
character_to_count <- "a"

# Function to count occurrences of a character in a string
count_character <- function(string, char) {
  sum(unlist(strsplit(string, "")) == char)
}

# Apply the function to each row of the DataFrame
df$Occurrences <- apply(df, 1, function(row) count_character(row["Text"], character_to_count))

# View the updated DataFrame
print(df)

