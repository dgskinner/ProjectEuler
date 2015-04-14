def pandigital_multiples
  x = 9
  largest_pan_num = -1
  while x < 9876 # since n > 1, x must be at most 4 digits
    num_str = ""
    (1..5).each do |n|
      num_str += (x * n).to_s
      break unless pandigital_potential?(num_str)
      if one_to_nine_pandigital?(num_str)
        pan_num = num_str.to_i
        largest_pan_num = pan_num if pan_num > largest_pan_num
      end
    end
    x += 1
  end
  
  largest_pan_num
end

def one_to_nine_pandigital?(num_str)
  num_str.length == 9 && num_str.chars.sort.join == [*1..9].join
end

def pandigital_potential?(num_str)
  digits = {}
  num_str.each_char do |digit|
    return false if digits[digit] || digit == 0
    digits[digit] = 1
  end
  true
end

puts pandigital_multiples # => 932718654