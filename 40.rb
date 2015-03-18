def champ_product
  num = 0
  digit_counter = 0
  targets = []
  target_digit = 1
  until targets.length == 7
    num += 1
    num.to_s.each_char do |digit|
      digit_counter += 1
      if digit_counter == target_digit
        targets << digit.to_i
        target_digit *= 10
      end 
    end
  end
  targets.inject(&:*)
end

puts champ_product # => 210