def digit_cancelling_fractions
  product = 1
  (10..98).each do |n|
    next if n % 10 == 0
    ((n + 1)..99).each do |d|
      next if d % 10 == 0
      2.times do |i|
        product *= Rational(n, d) if equal_with_canceled_digit?(n, d, i)
      end
    end
  end
  product.denominator
end

def equal_with_canceled_digit?(numerator, denominator, num_digit_idx)
  num_str = numerator.to_s
  digit = num_str[num_digit_idx]
  den_str = denominator.to_s
  den_digit_idx = den_str.index(digit)
  if den_digit_idx
    num_str[num_digit_idx], den_str[den_digit_idx] = "", ""
    return Rational(numerator, denominator) == Rational(num_str, den_str)
  end
  
  false
end

puts digit_cancelling_fractions # => 100