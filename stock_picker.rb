def stock_picker(prices)
  best_buy_day = 0
  best_sell_day = 0
  max_profit = 0

  (0...prices.length).each do |buy_day|
    ((buy_day + 1)...prices.length).each do |sell_day|
      profit = prices[sell_day] - prices[buy_day]
      
      if profit > max_profit
        max_profit = profit
        best_buy_day = buy_day
        best_sell_day = sell_day
      end
    end
  end
    
  [best_buy_day, best_sell_day]
end
puts stock_picker([17,3,6,9,15,8,6,1,10])