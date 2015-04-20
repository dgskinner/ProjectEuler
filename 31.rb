def coin_sums(total, coins, last_coin = 0) # coins is an array of coin values
  return 1 if total == 0
  num_ways = 0
  coins.each do |coin|
    next if coin < last_coin
    num_ways += coin_sums(total - coin, coins, coin) if total >= coin
  end
  
  num_ways
end

puts coin_sums(200, [1, 2, 5, 10, 20, 50, 100, 200])