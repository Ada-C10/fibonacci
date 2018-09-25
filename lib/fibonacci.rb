# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8
def fibonacci(n)
  raise ArgumentError if n == nil || n < 0

  i = 0
  x = 0
  y = 1
  result = 0

  while i < n
    result = x + y
    y = x
    x = result

    i += 1
  end

  return result

end
