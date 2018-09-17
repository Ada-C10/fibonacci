# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8
# Time Complexity: O(n)
# Space Complexity: O(1)
def fibonacci(n)
  if n == nil || n < 0
    raise ArgumentError.new("Not an integer")
  end
  return 0 if n == 0
  return 1 if n == 1

  first = 0
  second = 1
  sum = 0

  while n > 1  do
    sum = first + second
    first = second
    second = sum
    n -= 1
  end

  return second
end
