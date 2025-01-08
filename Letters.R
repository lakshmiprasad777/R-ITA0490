# Set seed for reproducibility
set.seed(123)
sample_letters <- sample(LETTERS, 20, replace = TRUE)
factor_letters <- factor(sample_letters)
cat("Original Factor Levels:\n")
print(levels(factor_letters))
print(factor_letters)
