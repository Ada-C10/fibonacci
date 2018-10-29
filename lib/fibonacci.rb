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
  elsif n.class != Integer || n < 0
    raise ArgumentError.new
  end

  x = 0
  y = 1
  z = nil
  (n - 1).times do
    z = x + y
    x = y
    y = z
  end
  return z
end


# the time complexity is O(n) because the solution must iterate through the loop (n - 1) times
# the space complexity is O(1) because only 3 additional variables are opened in memory which are then reassigned as the loop iterates
