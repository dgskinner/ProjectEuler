def is_prime?(num)
  return false if num < 2
  (2..(num / 2)).each do |n|
    return false if num % n == 0
  end
  true
end

def is_truncatable_prime?(num)
  return false unless is_prime?(num)
  num_str = num.to_s
  len = num_str.length
  (1...len).each do |i|
    return false unless is_prime?(num_str[i..-1].to_i) && is_prime?(num_str[0...(len - i)].to_i)
  end
  true
end

def sum_truncatable_primes
  truncatable_primes = []
  num = 11
  while truncatable_primes.length < 11
    truncatable_primes << num if is_truncatable_prime?(num)
    num += 2
  end
  truncatable_primes.inject(&:+)
end

puts Time.now
puts sum_truncatable_primes
puts Time.now