
calculate_series_sum <- function(num_terms) {
  
  series_sum <- 0
  
  
  for (n in 1:num_terms) {
    
    numerator <- n
    denominator <- 2 * n + 1
    
    
    sign <- ifelse(n %% 2 == 0, -1, 1)
    
    
    series_sum <- series_sum + sign * (numerator / denominator)
  }
  
  return(series_sum)
}


num_terms <- as.numeric(readline(prompt = "Enter the number of terms in the series: "))


if (is.na(num_terms) || num_terms <= 0 || num_terms %% 1 != 0) {
  cat("Error: Number of terms must be a positive integer.\n")
} else {
  
  series_sum <- calculate_series_sum(num_terms)
  cat("Sum of the series up to", num_terms, "terms is:", series_sum, "\n")
}
