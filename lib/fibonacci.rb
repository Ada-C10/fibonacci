# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8
def fibonacci(n)

  if n == nil || n < 0
    raise ArgumentError
  end

  a = 0
  z = 1

  # i didn't use recursion, but this is the base case in case i change it
  if n == 0
    return a
  elsif n == 1
    return z
  end

  result = 0 # declare outside loop for scope
  (n-1).times do # subtract one b/c shouldn't run for 1 or below
    result = a + z

    a = z
    z = result
  end

  return result
end
