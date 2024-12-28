# Create the array
dim1 <- 3  # Number of rows
dim2 <- 4  # Number of columns
dim3 <- 2  # Number of tables
array_data <- array(1:(dim1 * dim2 * dim3), dim = c(dim1, dim2, dim3))
dimnames(array_data) <- list(
  Rows = paste("Row", 1:dim1),
  Columns = paste("Col", 1:dim2),
  Tables = paste("Table", 1:dim3)
)
print(array_data)
