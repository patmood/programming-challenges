# This program will calculate the n-th number in the fibonacci sequence

def fib(n)
  if n == 0
    0
  elsif n == 1
    1
  end

end

#tests
def assert(condition)
  raise "Failed Test!" unless condition
end

assert(fib(0) == 0)
assert(fib(1) == 1)
p "All ok"

