
collect_student_records <- function() {
  
  names <- c()
  ages <- c()
  grades <- c()
  
  
  num_students <- as.numeric(readline(prompt = "Enter the number of students: "))
  
  
  if (is.na(num_students) || num_students <= 0) {
    cat("Error: Number of students must be a positive integer.\n")
    return(NULL)
  }
  
  
  for (i in 1:num_students) {
    cat("Student", i, ":\n")
    
    
    name <- readline(prompt = "Enter the name: ")
    
    
    age <- as.numeric(readline(prompt = "Enter the age: "))
    if (is.na(age) || age <= 0 || age %% 1 != 0) {
      cat("Error: Age must be a positive integer.\n")
      next
    }
    
    
    grade <- toupper(readline(prompt = "Enter the grade (A, B, C, D, F): "))
    if (!(grade %in% c("A", "B", "C", "D", "F"))) {
      cat("Error: Grade must be one of A, B, C, D, F.\n")
      next
    }
    
    
    names <- c(names, name)
    ages <- c(ages, age)
    grades <- c(grades, grade)
  }
  
  
  if (length(ages) > 0) {
    avg_age <- mean(ages)
    cat("Average age of students with valid records:", avg_age, "\n")
  } else {
    cat("No valid student records to calculate average age.\n")
  }
}


collect_student_records()
name <- readline(prompt = "Enter the name: ")
cat('name is ', name)
