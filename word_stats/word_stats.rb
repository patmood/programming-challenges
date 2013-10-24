doc = open('ipsum.txt', &:read)

def num_words(doc)
  word_array(doc).count
end

def word_array(doc)
  doc.gsub!(/\/n/,"")
  words = doc.split(" ")
end

def letter_count(doc)
  count = 0
  doc.each_char do |char|
    count += 1 if char.match(/^[[:alpha:]]$/)
  end
  count
end

def symbol_count(doc)
  count = 0
  doc.each_char do |char|
    count += 1 if char.match(/[^a-zA-Z\s]/)
  end
  count
end

def common_words(doc)
  words = word_array(doc)
  word_count = {}
  words.each do |word|
    word_count[word] ? word_count[word] += 1 : word_count[word] = 1
  end
  word_count.to_a.sort_by {|key, value| value}.reverse.slice(0,3)
end

def common_letters(doc)
  letter_count = {}
  doc.each_char do |char|
    if char.match(/^[[:alpha:]]$/)
      letter_count[char] ? letter_count[char] += 1 : letter_count[char] = 1
    end
  end
  letter_count.to_a.sort_by {|key, value| value}.reverse.slice(0,3)
end

puts num_words(doc) == 495
puts letter_count(doc) == 2789
puts symbol_count(doc) == 111
p common_words(doc)
p common_letters(doc)

