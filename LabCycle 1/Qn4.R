
generate_password <- function(length) {
  
  upper_chars <- LETTERS  
  lower_chars <- letters  
  digits <- 0:9  # Digits
  special_chars <- c("!", "@", "#", "$", "%", "^", "&", "*", "(", ")", "-", "_", "=", "+", "[", "]", "{", "}", ";", ":", "'", "\"", ",", ".", "/", "<", ">", "?")
  
  
  all_chars <- c(upper_chars, lower_chars, digits, special_chars)
  
  
  password <- paste0(sample(all_chars, length, replace = TRUE), collapse = "")
  
  return(password)
}


length <- as.numeric(readline(prompt = "Enter the length of the password: "))


if (is.na(length) || length <= 0 || length %% 1 != 0) {
  cat("Error: Password length must be a positive integer.\n")
} else {
  
  password <- generate_password(length)
  cat("Generated Password:", password, "\n")
}
