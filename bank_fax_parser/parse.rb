DIGITS = {
  "     |  |   " => "1",
  " _  _||_    " => "2",
  " _  _| _|   " => "3",
  "   |_|  |   " => "4",
  " _ |_  _|   " => "5",
  " _ |_ |_|   " => "6",
  " _   |  |   " => "7",
  " _ |_||_|   " => "8",
  " _ |_| _|   " => "9",
  " _ | ||_|   " => "0"
}


def stringify_input(input_array)
  string_digit_array = ["","","","","","","","",""]
  input_array.each do |line|
    9.times do |i|
      string_digit_array[i] << line.slice!(0..2)
    end
  end
  string_digit_array
end


def number_converter(string_digit_array)
  acct_number = ""
  string_digit_array.each do |digit|
    if DIGITS[digit].nil?
      acct_number << "?"
    else
      acct_number << DIGITS[digit]
    end
  end
  if acct_number.include?("?")
    acct_number << " ILL" 
  elsif invalid?(acct_number)
    acct_number << " ERR"
  end
  acct_number
end

def parser(input_array)
  string_digit_array = stringify_input(input_array)
  number_converter(string_digit_array)
end

def invalid?(string)

  # Checksum calculation:
  # Account num [d9,d8,d7......d1]
  # (d1+2*d2+3*d3 +..+9*d9) mod 11 = 0
 
  sum = 0
  0.upto(8) do |x|
   sum += string[x].to_i*(9-x) 
  end
  if sum%11 == 0
    false
  else
    true
  end
end

input = File.open('input2.txt').readlines

acct_num = parser(input)
p acct_num
p invalid?("284957211") == true
