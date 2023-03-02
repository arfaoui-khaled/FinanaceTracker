class StocksController < ApplicationController

  def search
    if params[:stock].blank?
      flash.now[:danger] = "You have entered an empty search string"
    else
      @stock = Stock.new_from_lookup(params[:stock].to_s)
      #render json: @stock
      flash.now[:danger] = "you have entered an incorrect symbol" unless @stock
    end
    render partial: 'users/result'
  end

end