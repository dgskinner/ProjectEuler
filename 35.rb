def is_prime?(num)
  return false if num < 2
  (2..(num / 2)).each do |i|
    return false if num % i == 0
  end
  true    
end

def is_circular_prime?(num)
  return false unless is_prime?(num)
  num_str = num.to_s
  (num_str.length - 1).times do 
    num_str = num_str[-1] + num_str[0...-1]
    return false unless is_prime?(num_str.to_i)
  end
  true
end

def circular_primes(max)
  count = 0
  (2...max).each do |n|
    if is_circular_prime?(n)
      count += 1
    end
  end
  count
end

puts circular_primes(1000000) # => 55