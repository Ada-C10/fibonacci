# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8
def fibonacci(n)

  sequence_array = [0, 1]
  raise ArgumentError if n.nil? || n < 0

  n.times do
    sequence_array << sequence_array[-1] + sequence_array[-2]
  end

  return sequence_array[n]
end


# compute nth fubbunaci number
# start sequence at 0
# num is the sum of the two preceeding ones
