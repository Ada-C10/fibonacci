# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8

# Time complexity is O(n) as iteration happens only once
# Space complexity is O(1)

def fibonacci(n)
  if n == nil || n < 0
    raise ArgumentError
  elsif n == 0
    return 0
  elsif n == 1
    return 1
  end

  first = 0
  second = 1

  index = 1
  while index < n
    holder = first + second
    first = second
    second = holder
    index += 1
  end
  return holder
end
