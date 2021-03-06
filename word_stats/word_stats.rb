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
    word_count[word.downcase] ? word_count[word.downcase] += 1 : word_count[word.downcase] = 1
  end
  word_count.to_a.sort_by {|key, value| value}
end

def top_common_words(doc)
  common_words(doc).reverse.slice(0,3)
end

def common_letters(doc)
  letter_count = {}
  doc.each_char do |char|
    if char.match(/^[[:alpha:]]$/)
      letter_count[char.downcase] ? letter_count[char.downcase] += 1 : letter_count[char.downcase] = 1
    end
  end
  letter_count.to_a.sort_by {|key, value| value}.reverse.slice(0,3)
end

def single_use_words(doc)
  word_count = common_words(doc)
  single_words = []
  word_count.each do |pair|
    if pair[1] == 1
      single_words << pair[0]
    end
  end
  single_words
end

def letters_not_used(doc)
  unused = ('a'..'z').to_a
  used = []
  doc.each_char do |char|
    if !used.include?(char.downcase)
      used << char.downcase
    end
  end
  unused-used
end

# Tests

p num_words(doc) == 495
p letter_count(doc) == 2789
p symbol_count(doc) == 111
p top_common_words(doc) == [["sed", 11], ["in", 11], ["vestibulum", 8]]
p common_letters(doc) == [["e", 302], ["i", 292], ["u", 246]]
# p single_use_words(doc)
p letters_not_used(doc)
