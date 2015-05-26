def lexicographic_perms
  # [0,1,2,3,4,5,6,7,8,9].permutation.to_a[999999].join("").to_i
  perm_nums = permutations([0, 1, 2, 3, 4, 5, 6, 7, 8, 9]).map!{ |perm| perm.join("").to_i }
  sorted_perm_nums = merge_sort(perm_nums)
  sorted_perm_nums[999999]
end

def permutations (numbers) 
  perms = [[numbers.pop]]
  until numbers.empty?
    front_num = numbers.pop
    new_perms = []
    perms.each do |perm|
      (perm.length + 1).times do |index|
        new_perms << perm[0...index] + [front_num] + perm[index..-1]
      end        
    end
    perms = new_perms
  end
  perms
end

def merge_sort (numbers)
  return numbers if numbers.length < 2
  mid_idx = numbers.length / 2
  left = numbers[0...mid_idx]
  right = numbers[mid_idx..-1]
  merge(merge_sort(left), merge_sort(right))
end

def merge (nums1, nums2)
  merged = []
  until nums1.empty? || nums2.empty?
    if nums1[0] < nums2[0]
      merged << nums1.shift
    else
      merged << nums2.shift
    end
  end
  merged + nums1 + nums2
end

puts lexicographic_perms # => 2783915460