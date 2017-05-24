# Write a method that takes one argument, a positive integer, and returns a list
# of the digits in the number.

# Algorithm: 1) Mod by 10, store the result in an array
# 2)divide the number by 10 and store it back in number
# Repeat until number becomes zero

def digits(number)
  numbers = []

  loop do
    numbers.unshift(number % 10)
    number = number / 10
    break if number == 0
  end

  numbers
end

# Tests
puts digits(12345) == [1, 2, 3, 4, 5]     # => true
puts digits(7) == [7]                     # => true
puts digits(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digits(444) == [4, 4, 4]             # => true

# Idiomatic solution using enumerable map

def digits_idiomatic(number)
  number.to_s.chars.map(&:to_i)
end
