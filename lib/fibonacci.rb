# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8
def fibonacci(n)

  if n == nil
    raise ArgumentError
  elsif n < 0
    raise ArgumentError
  elsif n == 0
    return 0
  elsif n == 1
    return 1
  end

  index = 2
  num_a = 0
  num_b = 1
  while index <= n do
    fibonacci = num_a + num_b
    num_a = num_b
    num_b = fibonacci
    index += 1
  end
  return fibonacci
end
