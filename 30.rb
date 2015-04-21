# Using a similar argument as in problem 34, I used 6 * 9**5 as an upper bound for numbers that need to be checked

def digit_fifth_powers
  total = 0
  num = 10
  while num < 354294
    total += num if num == sum_fifth_powers(num)
    num += 1
  end
  
  total
end

def sum_fifth_powers(num)
  sum = 0
  num.to_s.each_char do |digit|
    sum += digit.to_i**5
  end

  sum
end

puts digit_fifth_powers