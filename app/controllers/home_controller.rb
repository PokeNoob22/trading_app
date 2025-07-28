class HomeController < ApplicationController
  def index
    data = AlphaApi.get_stock_price(params[:symbol])
    @symbol = data['Meta Data'].dig('2. Symbol')
    @stock_price = data.dig('Time Series (Daily)').values.first.dig('1. open')
  end
end
