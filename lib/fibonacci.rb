# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8
def fibonacci(n)
  if n.nil? || n < 0
    raise ArgumentError
    # sum the two previous numbers in sequence to the provided number
  elsif n > 1
    x = 1
    fiba = 0
    fibb = 1
    while x < n
      fibb = fiba + fibb
      fiba = fibb - fiba
      x += 1
    end
  elsif
    fibb = n
  end


    return fibb
end

# sum the two previous numbers in sequence to the provided number
fibonacci(12)

# Time complexity is linear, as the while loop will run n times
# Space complexity is constant as there will always be 3 variables,
# one to store the iterator, one to store the first fibbonacci number
# and one to store the second in the sequence