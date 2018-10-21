# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8
def fibonacci(n)
  raise ArgumentError if n == nil || n < 0

  if n == 0 || n == 1
    return n
  end

  start = 0
  second_num = 1
  fibonacci_num = 1

  while n > 2
    start = second_num
    second_num = fibonacci_num
    fibonacci_num = start + second_num
    n -= 1
  end

  return fibonacci_num

  raise NotImplementedError
end


=begin
Time complexity: O(n) - run time increases as n increases, where n is the input of the number
Space complexity: O(1) - constant - stored variables remain the same even if input (n) increases

=end
