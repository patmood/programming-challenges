require('CSV')

def fizz2csv(max=0)
  results = []
  (1..max).each do |x|
    if x % 3 == 0 and x % 5 == 0
      results << "fizzbuzz"
    elsif x % 3 == 0
      results << "fizz"
    elsif x % 5 == 0
      results << "buzz"
    else
      results << x
    end
  end
  CSV.open("fizzbuzz.csv", "w") do |csv|
    results.each do |result|
      csv << [result]
    end
  end
  results.join(",")
end

puts fizz2csv(1) == "1"
puts fizz2csv(2) == "1,2"
puts fizz2csv(3) == "1,2,fizz"
puts fizz2csv(5) == "1,2,fizz,4,buzz"
puts fizz2csv(14) == "1,2,fizz,4,buzz,fizz,7,8,fizz,buzz,11,fizz,13,14"
puts fizz2csv(15) == "1,2,fizz,4,buzz,fizz,7,8,fizz,buzz,11,fizz,13,14,fizzbuzz"


