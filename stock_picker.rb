def stock_picker(prices)
  buy = 0
  sell = 0
  profit = 0
  (0..(prices.length - 2)).each do |buy_day|
    ((buy_day + 1)..prices.length - 1).each do |sell_day|
      difference = prices[sell_day] - prices[buy_day]
      if difference > profit
        buy = buy_day
        sell = sell_day
        profit = difference
      end
    end
  end
  puts "The best day to buy: #{buy}. The best day to sell: #{sell}."
  return [buy, sell]
end

stock_picker([17,3,6,9,15,8,6,1,10])
