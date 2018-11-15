# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8
require 'pry'
def fibonacci(n)
  if n == nil || n < 0
    raise ArgumentError, "negative number"
  end
  fib = [0, 1]
  first = 0
  second = 1
  while fib.length - 1 < n
    new_num = fib[first] + fib[second]
    fib << new_num
    first += 1
    second += 1
  end
  return fib[n]
end
