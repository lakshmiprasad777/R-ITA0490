# Load necessary library
library(reshape2)
data("ChickWeight")
print("First few rows of ChickWeight dataset:")
print(head(ChickWeight))
ordered_ChickWeight <- ChickWeight[order(ChickWeight$Diet, ChickWeight$weight), ]
last_six_records <- tail(ordered_ChickWeight, 6)
print("Last 6 records of the ordered data frame:")
print(last_six_records)
melted_ChickWeight <- melt(ChickWeight, id.vars = c("Chick", "Time", "Diet"))
print("Melted ChickWeight data frame:")
print(head(melted_ChickWeight))
mean_weight_by_diet <- dcast(melted_ChickWeight[melted_ChickWeight$variable == "weight", ], Diet ~ variable, mean)
print("Mean value of weight grouped by Diet:")
print(mean_weight_by_diet)
mode_function <- function(x) {
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}
mode_weight_by_diet <- dcast(melted_ChickWeight[melted_ChickWeight$variable == "weight", ], Diet ~ variable, mode_function)
print("Mode value of weight grouped by Diet:")
print(mode_weight_by_diet)
