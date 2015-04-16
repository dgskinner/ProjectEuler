def factorial(n)
  return 1 if n < 2
  n * factorial(n - 1)
end

def sum_of_digit_factorials(num)
  num_str = num.to_s
  sum = 0
  num_str.each_char do |digit|
    sum += factorial(digit.to_i)
  end
  sum
end

def digit_factorials
  total_sum = 0
  (10..2540160).each do |num|
    total_sum += num if num == sum_of_digit_factorials(num)
  end
  total_sum
end

puts Time.now
puts digit_factorials # => 40730
puts Time.now

