values <- 1:24
array_3d <- array(values, dim = c(3, 4, 2))
print("3D Array:")
print(array_3d)
dimnames(array_3d) <- list(
  Row = c("Row1", "Row2", "Row3"),
  Column = c("Col1", "Col2", "Col3", "Col4"),
  Table = c("Table1", "Table2")
)
print("3D Array with Dimension Names:")
print(array_3d)
element <- array_3d["Row2", "Col3", "Table1"]
print(element)
