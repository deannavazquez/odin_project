def stock_picker(prices)
  best_days = []
  max_profit = 0

  prices.each_with_index do |buy_price, buy_day|
    # Only consider selling AFTER the buy day
    prices.each_with_index do |sell_price, sell_day|
      next if sell_day <= buy_day  # ❌ Skip invalid sell days
      
      # 🔢 Calculate the profit here
      profit = sell_price - buy_price
      # 💡 If this profit is better than max_profit,
      # update max_profit and save the days like this:
      if profit > max_profit
        max_profit = profit
        # show how best_days changes as better profits are found.
        puts "New best: buy on day #{buy_day} (#{buy_price}), sell on day #{sell_day} (#{sell_price}), profit: #{profit}"
    end
  end
end

  best_days
end