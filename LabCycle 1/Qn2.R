
caesar_encrypt <- function(sentence, shift) {
  encrypted_sentence <- ""
  
  
  for (i in 1:nchar(sentence)) {
    char <- substr(sentence, i, i)
    
    
    if (char %in% letters) {
      new_char <- letters[(match(char, letters) - 1 + shift) %% 26 + 1]
    }
    
    else if (char %in% LETTERS) {
      new_char <- LETTERS[(match(char, LETTERS) - 1 + shift) %% 26 + 1]
    }
    
    else {
      new_char <- char
    }
    
    # Append the new character to the encrypted sentence
    encrypted_sentence <- paste0(encrypted_sentence, new_char)
  }
  
  return(encrypted_sentence)
}

sentence <- readline(prompt = "Enter the sentence to encrypt: ")


shift <- as.numeric(readline(prompt = "Enter the shift value (integer): "))


encrypted_sentence <- caesar_encrypt(sentence, shift)


cat("Original Sentence:", sentence, "\n")
cat("Encrypted Sentence:", encrypted_sentence, "\n")

