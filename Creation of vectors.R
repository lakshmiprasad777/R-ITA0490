# Initialize vectors to store categorized numbers
multiples_of_3 <- c()
multiples_of_5 <- c()
multiples_of_both <- c()
neither <- c()

# Iterate through the sequence and categorize numbers
for (num in numbers) {
  if (num %% 3 == 0 & num %% 5 == 0) {
    multiples_of_both <- c(multiples_of_both, num)
  } else if (num %% 3 == 0) {
    multiples_of_3 <- c(multiples_of_3, num)
  } else if (num %% 5 == 0) {
    multiples_of_5 <- c(multiples_of_5, num)
  } else {
    neither <- c(neither, num)
  }
}

# Print the results
cat("Multiples of 3:", multiples_of_3, "\n")
cat("Multiples of 5:", multiples_of_5, "\n")
cat("Multiples of both 3 and 5:", multiples_of_both, "\n")
cat("Neither:", neither, "\n")
