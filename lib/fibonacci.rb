# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8

#Time complexity is O(n) because it linearly increases based on the size of the input number
#Space complexity is O(1) because the number of variables need is constant regardless of the size of input number
def fibonacci(n)
  raise ArgumentError if n == nil
  raise ArgumentError if n < 0

  i = 0
  k = 0
  m = 0
  j = 1

  until i > n
    k = k + m
    m = j
    j = k
    i += 1
  end

  return k
end

# def fibonacci(n)
#   if n < 0
#     return nil
#   elsif n == 1
#     return 1
#   elsif n == 2
#      return 1
#   else
#     fibonacci(n-1) + fibonacci(n-2)
#   end
# end
#
#
# puts fibonacci(8)
