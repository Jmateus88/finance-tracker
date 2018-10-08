class StocksController < ApplicationController
  
  def search
  	if params[:stock].present?
  		@stock = Stock.new_from_lookup(params[:stock])
  		if @stock
  			flash[:danger] = "you have entered an incorrect symbol"
  		else
  			render 'users/my_portfolio'
  		end


  	else
  		flash[:danger] = "you have entered an empty search string"
  		redirect_to my_portfolio_path
  	end

  end
  
end
