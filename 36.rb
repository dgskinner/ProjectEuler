def is_pal?(num, base = 10)
  num_str = num.to_s(base)
  num_str == num_str.reverse
end

def sum_double_base_pals
  sum = 0
  (1...1000000).each do |n|
    sum += n if is_pal?(n) && is_pal?(n, 2) 
  end
  sum
end

puts sum_double_base_pals # => 872187