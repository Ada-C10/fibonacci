# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8
def fibonacci(n)
  # Computes the nth fibonacci number in the series starting with 0.
  # fibonacci series: 0 1 1 2 3 5 8 13 21 ...
  # e.g. 0th fibonacci number is 0
  # e.g. 1st fibonacci number is 1
  # ....
  # e.g. 6th fibonacci number is 8


  # 0 1 1 2 3 5 8 13 21 34 55 89 144

  # time complexity is On: linear we have to look through the length of the string on integers.
  # space complexity is 01: constant, no matter how long the string is, we need the same amount of variable space for every instance

  def fibonacci(n)
    if n == 1 || n == 0
      return n
    elsif n == nil || n < 0
      raise ArgumentError.new
    else
      start = 0
      second_num = 1
      fib = 1

      while n > 2

        start = second_num
        second_num = fib
        fib = start + second_num

        n -= 1

      end
      return fib
    end

  end
end
