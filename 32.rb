def pandigital_combo?(mult1, mult2, prod)
  num_str_arr = [mult1.to_s, mult2.to_s, prod.to_s]
  digits = {}
  num_str_arr.each do |num_str|
    num_str.each_char do |digit|
      return false if digit == '0' || digits[digit]
      digits[digit] = 1
    end
  end
  digits.length == 9
end

def pandigital_products
  pan_products = {}
  sum = 0 
  (1..98).each do |m1|
    (123..4987).each do |m2|
      prod = m1 * m2
      next if pan_products[prod]
      if pandigital_combo?(m1, m2, prod)
        pan_products[prod] = true
        sum += prod 
      end
    end
  end
  sum
end

puts pandigital_products # => 45228