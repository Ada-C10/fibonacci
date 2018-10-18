# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8
def fibonacci(n)

  if n == 0
    return 0
  elsif n == 1
    return 1
  elsif n == 2
    return 1
  elsif n == nil
    raise ArgumentError.new ("no")
  elsif n < 0
    raise ArgumentError.new ("no")    
  end


  start = 0
  next_num = 1
  sum = start + next_num

  n = n - 2
  i = 0

  while i < n
    start = next_num
    next_num = sum
    sum = start + next_num
    i += 1
  end

  return sum

  # raise NotImplementedError
end
