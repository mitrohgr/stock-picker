def stock_picker(stock_prices)
  biggest_profit = 0
  best_buy_day = 0
  best_sell_day = 0

  stock_prices.each_with_index do |buy_price, buy_day|
    stock_prices.each_with_index do |sell_price, sell_day|
      next if buy_day >= sell_day
      if sell_price - buy_price > biggest_profit
        biggest_profit = sell_price - buy_price
        best_buy_day = buy_day
        best_sell_day = sell_day
      end
    end
  end

  [best_buy_day, best_sell_day]
end

stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])