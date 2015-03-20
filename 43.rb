def pandigital_list
  pandigitals = []
  [*0..9].permutation.each do |perm_arr|
    pandigitals << perm_arr.join.to_i
  end
  pandigitals
end

def has_property? (pan_num)
  pan_str = pan_num.to_s
  primes = [2, 3, 5, 7, 11, 13, 17]
  (1..7).each do |start_digit|
    three_digit_num = pan_str[start_digit..(start_digit + 2)].to_i
    return false if three_digit_num % primes[start_digit - 1] != 0
  end
  true 
end

def sum_pans_with_property 
  sum = 0
  pandigital_list.each do |pan_num|
    sum += pan_num if has_property?(pan_num)
  end
  sum
end

puts sum_pans_with_property # => 16695334890