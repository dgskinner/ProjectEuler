# Note: In order to find the largest n-digit pandigital prime, it is helpful to know the following:
# Any whole number is divisble by three if and only if the sum of its digits is divisible by three (proof: http://mathforum.org/library/drmath/view/63724.html)
# This means that we only have to check 4- and 7-digit pandigital numbers

# Method 1: For each number with the correct number of digits, check if the number is both pandigital and prime

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

def largest_pan_prime1 (num_digits)
  largest = nil
  (10**(num_digits - 1)...10**num_digits).each do |n|
    largest = n if (is_pandigital?(n) && is_prime?(n))
  end
  largest
end

puts largest_pan_prime1(4) # => 4231

# Method 2: create a list of all pandigital numbers and then check if they are prime

def pandigital_list (num_digits)
  pandigitals = []
  [*1..num_digits].permutation.each do |perm_arr|
    pandigitals << perm_arr.join.to_i
  end
  pandigitals
end

def largest_pan_prime2 (num_digits)
  largest = nil
  pandigital_list(num_digits).each do |pan_num|
    largest = pan_num if is_prime?(pan_num)
  end
  largest
end

puts largest_pan_prime2(7) # => 7652413
