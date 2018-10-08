# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8
# def fibonacci(n)
#   if n.nil?
#     raise ArgumentError, "Cannot be nil"
#   end
#
#   if n.to_s.include?("-")
#     raise ArgumentError, "Cannot be negative"
#   end
#   # From 0 to N
#   # Each number is the sum of the two numbers before it
#   # Generate array of numbers
#   # Look at prior to numbers, add them together
#   # 0 and 1 do not have prior two entries to add together
#   numbers = [*0..n]
#   # Start at index 2, manually add in 0 and 1
#   result = [0, 1]
#   i = 2
#   while i < numbers.length
#     # First number
#     a = result[i - 1]
#     # Second number
#     b = result[i - 2]
#     # Push sum of a and b to result array
#     result << (a + b)
#     # Increase iterator
#     i += 1
#   end
#   # Return result at n index
#   return result[n]
# end

# Linear runtime , O(1) space complexity

# Recursive attempt

def fibonacci(n)
  if n.nil?
      raise ArgumentError, "Cannot be nil"
    end

  if n.to_s.include?("-")
    raise ArgumentError, "Cannot be negative"
  end

  # When n is less than 0 or 1, number is returned
  if n < 2
    return n
    # 0 returns 0, 1 returns 1
  end
  # Otherwise, returns sum of prior two numbers
  # Enters recursion
  return fibonacci( n-1 ) + fibonacci( n-2)

end

# Time Complexity
# Recursive - Takes much longer :( 
