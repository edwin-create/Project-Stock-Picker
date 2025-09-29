def stock_picker(prices)
  max_difference = 0
  buy_sale_days = []

  return [] if prices.length < 2

  prices.each_with_index do |buy_price, buy_day|
    prices.each_with_index do |sell_price, sell_day|
      next if sell_day <= buy_day
        current_difference = sell_price - buy_price
          
        if current_difference > max_difference
           max_difference = current_difference
           buy_sale_days = [buy_day, sell_day]
        end
    end
  end

  buy_sale_days
end
  
stock_picker([17,3,6,9,15,8,6,1,10])