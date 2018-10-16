# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8
# * Fibonacci series starting with 0 looks like this: 0 + 1 = 1 + 2 = 3 + 5 = 8 + 13 = 21 + 34  = 55 + 89 = 144 ...
# wants to find out fibonacci sequence of a number aka array index
def fibonacci(n)
  # raise NotImplementedError
  raise ArgumentError if n < 0 || n == nil #error if negative

  i = 0
  fib_array = [0, 1] #all fibonacci sequences begin with 0 and 1
  until fib_array.length == n+1 #until the correct index is reached
    fib_array.push fib_array[i] + fib_array[i+1]
    i += 1
  end
  return fib_array[n] #return number at requested index
end

puts fibonacci(12)
