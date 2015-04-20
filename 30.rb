def digit_fifth_powers
  total = 0
  num = 10
  while true
    if num == sum_fifth_powers(num)
      total += num 
      puts total
    end
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

digit_fifth_powers