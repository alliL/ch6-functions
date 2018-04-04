# Exercise 4: functions and conditionals

# Define a function `is_twice_as_long` that takes in two character strings, and 
# returns whether or not (e.g., a boolean) the length of one argument is greater
# than or equal to twice the length of the other.
# Hint: compare the length difference to the length of the smaller string
is_twice_as_long <- function(string1, string2) {
  difference <- abs(nchar(string1) - nchar(string2))
  smaller_string <- min(nchar(string1), nchar(string2))
  difference >= smaller_string
}


# Call your `is_twice_as_long` function by passing it different length strings
# to confirm that it works. Make sure to check when _either_ argument is twice
# as long, as well as when neither are!
is_twice_as_long("hello", "hellohello")
is_twice_as_long("hellohello", "hello")
is_twice_as_long("hi", "hi")


# Define a function `describe_difference` that takes in two strings. The
# function should return one of the following sentences as appropriate
#   "Your first string is longer by N characters"
#   "Your second string is longer by N characters"
#   "Your strings are the same length!"
describe_difference <- function(string1, string2) {
  difference <- abs(nchar(string1) - nchar(string2))
  if (nchar(string1) > nchar(string2)) {
    sentence <- paste0("Your first string is longer by ", difference , " characters")
  } else if (nchar(string1) < nchar(string2)) {
    sentence <- paste0("Your second string is longer by ", difference , " characters")
  } else {
    sentence <- "Your strings are the same length!"
  }
  sentence
}

# Call your `describe_difference` function by passing it different length strings
# to confirm that it works. Make sure to check all 3 conditions1
describe_difference("hello", "hellohellohi")
describe_difference("hellohello", "hello")
describe_difference("hi", "hi")
