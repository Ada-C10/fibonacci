# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8
def fibonacci(n)
  first = 0
  second = 1
  current = 1

  raise ArgumentError.new("n must be a positve number") if n.nil? || n < 0
  return n if n == 0 || n == 1

  while n > 2
    first = second
    second = current
    current = first + second
    n -= 1
  end

  return current
end

# Time Complexity is linear O(n-2), O(n) we iterate for n - 2 times at most
# Space Complexity is constant O(1). as input value changes the amount of 
# memory needed does not change
