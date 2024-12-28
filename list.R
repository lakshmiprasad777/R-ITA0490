# Define a vector
vector <- c(1, 2, 3, 4, 5)
matrix <- matrix(1:9, nrow = 3, ncol = 3)
custom_function <- function(x) {
  return(x * 2)
}
my_list <- list(
  my_vector = vector,
  my_matrix = matrix,
  my_function = custom_function
)
print(my_list)
print(my_list$my_vector)
print(my_list$my_matrix)
result <- my_list$my_function(10)
print(result)
