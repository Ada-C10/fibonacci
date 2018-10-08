# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8
def fibonacci(n)
  if n == nil || n < 0
    raise ArgumentError.new("Invalid value")
  elsif n == 0
    return 0
  else
    array = []
    array << 0
    array << 1
    x = 0
    y = x + 1
    until y == n

      first = array[x]
      second = array[y]
      sum = first + second
      array << sum

      x += 1
      y += 1
    end
  end
  return array[n]
  # raise NotImplementedError
end

test = fibonacci(7)
puts "#{test}"
