# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8
def fibonacci(n)

  raise ArgumentError if n.nil? || n < 0

  a = Array.new(n, 0)

  a[0] = 0
  a[1] = 1

  i = 2

  while i <= n
    a[i] = a[i-1] + a[i-2]
    i += 1
  end

  return a[n]
end

# Time complexity: linear
#  Given an integer of value n, the time complexity is O(n). The runtime is directly proportionate to the value of n.
# Space complexity: linear
#  Given an integer of value n, the space complexity is O(n). The size of the array is set by the value of n.
