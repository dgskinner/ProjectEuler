def thousand_digit_fib_index
  num1 = 1
  num2 = 1
  index = 2
  while num2.to_s.length < 1000
    num1, num2 = num2, num1 + num2
    index += 1
  end
  index
end

puts thousand_digit_fib_index # => 4782