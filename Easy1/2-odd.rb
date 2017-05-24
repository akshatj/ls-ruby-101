# Write a method that takes one integer argument, which may be positive,
# negative, or zero. This method return true if the number's absolute value is
# odd. You may assume that the argument is a valid integer value.

def odd?(number)
  number % 2 != 0
end
