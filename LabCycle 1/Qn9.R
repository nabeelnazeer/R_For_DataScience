
run_length_encoding <- function(input_string) {
  if (nchar(input_string) == 0) {
    return("")
  }
  
  encoded_string <- ""
  count <- 1
  prev_char <- substr(input_string, 1, 1)
  
  for (i in 2:nchar(input_string)) {
    current_char <- substr(input_string, i, i)
    if (current_char == prev_char) {
      count <- count + 1
    } else {
      encoded_string <- paste0(encoded_string, prev_char, count)
      prev_char <- current_char
      count <- 1
    }
  }
  
  
  encoded_string <- paste0(encoded_string, prev_char, count)
  
  return(encoded_string)
}


input_string <- readline(prompt = "Enter a string to compress using run-length encoding: ")


encoded_string <- run_length_encoding(input_string)


cat("Original String: ", input_string, "\n")
cat("Encoded String: ", encoded_string, "\n")
