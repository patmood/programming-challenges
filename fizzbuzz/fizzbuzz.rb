def fizzbuzz_check(number)
  if number%3 == 0
    if number%5 == 0
      "fizzbuzz"
    else
      "fizz"
    end
  elsif number%5 == 0
    "buzz"
  else
    number
  end
end

def fizzbuzz_count(times)
  for i in (0..times)
    puts fizzbuzz_check(i)
  end
end

def assert(condition)
  raise "Test for failed" unless condition
end

fizzbuzz_count(50)

# Simple problem so be strict on tests
assert (fizzbuzz_check(1) == 1)
assert (fizzbuzz_check(3) == "fizz")
assert (fizzbuzz_check(5) == "buzz")
assert (fizzbuzz_check(6) == "fizz")
assert (fizzbuzz_check(15) == "fizzbuzz")
# assert (fizzbuzz_count(1) == "1")
p "ok"

