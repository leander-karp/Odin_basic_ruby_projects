def stock_picker(stock_prices)
  best_day = []
  best_profit = 0
  for buy_day in stock_prices.each_index do 
    for sell_day in buy_day...stock_prices.length do 
      profit = stock_prices[sell_day] - stock_prices[buy_day]
      if best_profit < profit
        best_day = [buy_day, sell_day]
        best_profit = profit
      end 
    end
  end
  # p best_profit
  return best_day
end

p stock_picker([17,3,6,9,15,8,6,1,10])
p stock_picker([])
p stock_picker([10])
p stock_picker([10,9,8,7])
p stock_picker([8,9,10])
p stock_picker([11,92,75,13,25,47,87,22,89,40]) #=> [0, 1]
p stock_picker([1,5,27,27,11,10,3,38,23,17]) #=> [0, 7]
p stock_picker([13,3,7,29,18,15,34,19,2,35]) #=> [8, 9]