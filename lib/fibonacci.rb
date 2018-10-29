# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8
# fibonacci(3).must_equal 2

# Time Complexity: O(n)
# Space Complexity: O(1)

def fibonacci(n)
  one = 0
  two = 1
  sum = 0
  i = 0
  raise ArgumentError if  n.nil?
  raise ArgumentError if n < 0
  return n if n == 1
  while (n - 1) > i
    sum = one + two
    one = two
    two = sum
    i += 1
  end
  return sum
end
