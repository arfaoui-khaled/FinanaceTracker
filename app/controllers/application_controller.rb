class ApplicationController < ActionController::Base
  before_action :authenticate_user!, :initialize_stock_quote

  def initialize_stock_quote
    StockQuote::Stock.new(api_key: "sk_a61ec7dda17f47679260ec0fc
294214b")
  end
end
