def pentagonal_difference
  n = 1
  pent_nums = {}
  min_diff = nil
  # while min_diff.nil? || min_diff < ((n + 1) * (3 * (n + 1) - 1) / 2) - (n * (3 * n - 1) / 2)
  until min_diff
    puts n
    pent_nums[n] = n * (3 * n - 1) / 2
    
    (1...n).each do |i|
      ((i + 1)..n).each do |j|
        next if i == j
        # if pent_nums[pent_nums[i] + pent_nums[j]]
        #   puts pent_nums[pent_nums[i] + pent_nums[j]]
        # end
        if pent_nums[pent_nums[i] + pent_nums[j]] && pent_nums[pent_nums[j] - pent_nums[i]]
          min_diff = pent_nums[pent_nums[j] - pent_nums[i]]
          puts min_diff
        end
      end
    end
    
    n += 1
  end
  
  min_diff
end

def pentagonal_numbers (n)
  pent_nums = []
  (1..n).each do |i|
    pent_nums << i * (3 * i - 1) / 2
  end
  pent_nums
end

def pentagonal_difference2
  # n = 1
  pent_nums = pentagonal_numbers(10000)
  pent_nums_hash = {}
  pent_nums.each do |num|
    pent_nums_hash[num] = true
  end
  # min_diff = nil
  # while min_diff.nil? || min_diff < ((n + 1) * (3 * (n + 1) - 1) / 2) - (n * (3 * n - 1) / 2)
  (0...9999).each do |i|
    ((i + 1)..9999).each do |j|
      # if pent_nums[pent_nums[i] + pent_nums[j]]
      #   puts pent_nums[pent_nums[i] + pent_nums[j]]
      # end
      puts pent_nums[i]
      puts pent_nums[j]
      if pent_nums_hash[pent_nums[i] + pent_nums[j]] && pent_nums_hash[pent_nums[j] - pent_nums[i]]
        # min_diff = pent_nums[pent_nums[i] - pent_nums[j]]
        puts pent_nums[pent_nums[j] - pent_nums[i]]
        return 
      end
    end
  end
end

pentagonal_difference2