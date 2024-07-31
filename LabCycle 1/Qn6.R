
is_prime <- function(n) {
  if (n <= 1) {
    return(FALSE)
  }
  for (i in 2:sqrt(n)) {
    if (n %% i == 0) {
      return(FALSE)
    }
  }
  return(TRUE)
}


find_primes_in_range <- function(start, end) {
  primes <- c()
  for (num in start:end) {
    if (is_prime(num)) {
      primes <- c(primes, num)
    }
  }
  return(primes)
}


prime_checker <- function() {
  # Prompt user for a single number to check if it's prime
  num <- as.numeric(readline(prompt = "Enter a number to check if it is prime: "))
  
  # Validate the input
  if (is.na(num) || num %% 1 != 0) {
    cat("Error: Please enter a valid integer.\n")
  } else {
    if (is_prime(num)) {
      cat(num, "is a prime number.\n")
    } else {
      cat(num, "is not a prime number.\n")
    }
  }
  
  # Prompt user for a range to find all prime numbers within
  start <- as.numeric(readline(prompt = "Enter the start of the range: "))
  end <- as.numeric(readline(prompt = "Enter the end of the range: "))
  
  # Validate the range inputs
  if (is.na(start) || start %% 1 != 0 || is.na(end) || end %% 1 != 0 || start > end) {
    cat("Error: Please enter a valid range of integers where the start is less than or equal to the end.\n")
  } else {
    primes <- find_primes_in_range(start, end)
    if (length(primes) == 0) {
      cat("There are no prime numbers in the range from", start, "to", end, ".\n")
    } else {
      cat("Prime numbers in the range from", start, "to", end, "are:", paste(primes, collapse = ", "), "\n")
    }
  }
}

# Call the main function to execute the program
prime_checker()
