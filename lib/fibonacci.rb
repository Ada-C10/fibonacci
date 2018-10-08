# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8
def fibonacci(n)
  raise ArgumentError if n.class == NilClass || n < 0

  fib = Array.new(n)
  fib[0] = 0
  fib[1] = 1

  if n==0 || n==1
    return fib[n]
  end

  (2..n).to_a.each do |n|
    fib[n] = fib[n-1] + fib[n-2]
  end

  return fib.last
end
