def digit_factorials
  total = 0
  (10..2540160).each do |num|
    num_str = num.to_s
    sum = 0
    num_str.each_char do |digit|
      sum += factorial(digit.to_i)
    end
    total += num if num == sum
  end
  total
end

def factorial(n)
  return 1 if n < 2
  n * factorial(n - 1)
end

puts Time.now
puts digit_factorials # => 40730
puts Time.now