class Stock < ApplicationRecord

  def self.new_from_lookup(ticker_symbol)
    begin
      StockQuote::Stock.new(api_key: "sk_a61ec7dda17f47679260ec0fc294214b")
      looked_up_stock = StockQuote::Stock.quote(ticker_symbol)
      new(name: looked_up_stock.company_name, ticker: looked_up_stock.symbol, last_price: looked_up_stock.previous_close)
    rescue Exception => e
      return nil
    end
  end



end
