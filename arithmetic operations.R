# Basic arithmetic operations
add <- function(x, y) x + y
subtract <- function(x, y) x - y
multiply <- function(x, y) x * y
divide <- function(x, y) ifelse(y != 0, x / y, NA)
test_values <- list(c(1, 1), c(1e10, 1e-10),
 c(1e-10, 1e10), c(1e308, 1e-308), c(0, 0))
for (values in test_values) {
  x <- values[1]
  y <- values[2]
  cat("Addition: ", add(x, y), "\n")
  cat("Subtraction: ", subtract(x, y), "\n")
  cat("Multiplication: ", multiply(x, y), "\n")
  cat("Division: ", divide(x, y), "\n\n")
}
