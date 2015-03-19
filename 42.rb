def numeric_value (caps_word)
  total = 0
  caps_word.each_char do |char|
    total += (char.ord - 64)
  end
  total
end

def triangle_num? (num)
  n = 1
  while true 
    triangle_num = (n * (n + 1) / 2)
    return true if num == triangle_num
    return false if triangle_num > num
    n += 1
  end
end

def triangle_words
  words = File.read("./p042_words.txt")
  triangle_count = 0
  words.split(",").each do |word|
    num_val = numeric_value(word[1..-2])
    triangle_count += 1 if triangle_num?(num_val)
  end
  triangle_count
end

puts triangle_words # => 162