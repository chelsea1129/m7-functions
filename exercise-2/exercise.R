# Exercise 2: writing and executing functions (II)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(a, b){
  diff <- abs(a - b)
  return (paste('The difference in length is', diff))
}


# Pass two vectors of different length to your `CompareLength` function


# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(a, b){
  diff <- length(a) - length(b)
  if(diff > 0){
    vector.name <- deparse(substitute(a))
    sentence <- paste("The longer vector is", vector.name)
  } else {
    vector.name <- deparse(substitute(b))
    sentence <- paste("The longer vector is", vector.name)
  }
  return(sentence)
}

# Pass two vectors to your `DescribeDifference` function


### Bonus ###

# Rewrite your `DescribeDifference` function to tell you the name of the vector which is longer