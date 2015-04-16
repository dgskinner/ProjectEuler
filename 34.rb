# The trickiest part here is knowing where the upper bound is for numbers we need to check. I chose 2540160 because this is equal to 7 * factorial(9). For any number, we know that the sum of the factorials of the digits can't be greater than factorial(9) * (number_of_digits). We can be sure that for any number n greater than 7 * factorial(9), n > sum_of_digit_factorials(n) because at this point, the sum of the factorials of the digits is growing slower than the number itself.

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

