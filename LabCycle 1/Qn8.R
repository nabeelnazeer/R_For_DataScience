
is_palindrome <- function(input_string) {
  
  cleaned_string <- gsub("[^a-zA-Z]", "", input_string)
  cleaned_string <- tolower(cleaned_string)
  
  
  return(cleaned_string == paste(rev(strsplit(cleaned_string, NULL)[[1]]), collapse = ""))
}


input_string <- readline(prompt = "Enter a string to check if it's a palindrome: ")


if (is_palindrome(input_string)) {
  cat("The string is a palindrome.\n")
} else {
  cat("The string is not a palindrome.\n")
}
