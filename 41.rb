def is_prime? (num)
  return false if num < 2
  (2..(num / 2)).each do |i|
    return false if num % i == 0
  end
  true
end

def is_pandigital? (num)
  num_string = num.to_s
  num_string.chars.sort.join == [*1..num_string.length].join
end

def largest_pan_prime (num_digits)
  largest = nil
  (1...10**num_digits).each do |n|
    largest = n if (is_pandigital?(n) && is_prime?(n))
  end
  largest
end

puts largest_pan_prime(4)