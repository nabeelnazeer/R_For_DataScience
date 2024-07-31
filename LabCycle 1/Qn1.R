
paragraph <- "This is a simple example paragraph to demonstrate the program. This program is written in R."

word_to_replace <- "program"
replacement_word <- "script"

words <- strsplit(paragraph, "\\s+")[[1]]

total_words <- length(words)

word_lengths <- nchar(words)

average_word_length <- mean(word_lengths)

longest_word <- words[which.max(word_lengths)]

modified_text <- gsub(word_to_replace, replacement_word, paragraph)

cat("Total number of words:", total_words, "\n")
cat("Average word length:", average_word_length, "\n")
cat("Longest word:", longest_word, "\n")
cat("Modified text:\n", modified_text, "\n")
