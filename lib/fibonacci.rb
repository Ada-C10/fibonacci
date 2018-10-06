# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8
def fibonacci(n)
  if n == nil || n < 0
    raise ArgumentError
  elsif
    n < 2
    return n
  else
    a = 0
    b = 1
    n.times do
      temp = a
      a = b
      b = temp + b
    end
    return  a
  end
end
