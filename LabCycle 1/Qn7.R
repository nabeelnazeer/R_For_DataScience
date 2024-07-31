
generate_modified_fibonacci <- function(num_terms) {
  if (num_terms <= 0) {
    cat("Error: Number of terms must be a positive integer.\n")
    return(NULL)
  }
  
  
  series <- c(0, 1, 1)
  
  
  for (i in 4:num_terms) {
    next_term <- series[i-1] + series[i-2] + series[i-3]
    series <- c(series, next_term)
  }
  
  
  series <- series[1:num_terms]
  
  return(series)
}


num_terms <- as.numeric(readline(prompt = "Enter the number of terms in the series: "))


if (is.na(num_terms) || num_terms <= 0 || num_terms %% 1 != 0) {
  cat("Error: Number of terms must be a positive integer.\n")
} else {
  
  series <- generate_modified_fibonacci(num_terms)
  cat("Modified Fibonacci series with", num_terms, "terms:\n", paste(series, collapse = ", "), "\n")
}
