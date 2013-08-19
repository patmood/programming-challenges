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
  acct_number << " ERR" if acct_number.include?("?")
  acct_number
end

def parser(input_array)
  string_digit_array = stringify_input(input_array)
  number_converter(string_digit_array)
end



input = File.open('input.txt').readlines

p parser(input)

