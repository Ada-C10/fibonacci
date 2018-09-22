# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8

# SOLUTION 1
# My first solution has a time complexity of O(n) since the loop has to execute n-1
# times. The time complexity is O(1) since it requires 3 additional variables
# no matter the size of n.
def fibonacci(n)
  raise ArgumentError if n == nil || n < 0
  return 0 if n == 0

  num1 = 0
  num2 = 1
  num3 = 1
  (n - 1).times do
    num3 = (num1 + num2)
    num1 = num2
    num2 = num3
  end
  return num3
end

# SOLUTION 2
# My second solution is a recursive one where the time complexity is O(n) and
# the space complexity is O(1) where no additional variables are required.
def fibonacci(n)
  raise ArgumentError if n == nil || n < 0
  return 0 if n == 0
  return 1 if n == 1
  return fibonacci(n-1) + fibonacci(n-2)
end


# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
