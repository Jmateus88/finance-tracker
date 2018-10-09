class StocksController < ApplicationController
  
  def search
    # if params[:stock].present?
    #   @stock = Stock.new_from_lookup(params[:stock])
    #   if @stock
    #     render partial: 'users/result'
    #   else
    #     flash.now[:danger] = "you have entered an incorrect symbol" 
    #     redirect_to my_portfolio_path
    #   end

    # else
    #   flash.now[:danger] = "you have entered an empty search string"  
    #   redirect_to my_portfolio_path
    # end



    # if params[:stock].blank?
    #   flash.now[:danger] = "you have entered an empty search string"  
    # else
    #   @stock = Stock.new_from_lookup(params[:stock])
    #   if @stock.present?
    #     @stock
    #   else
    #     flash.now[:danger] = "you have entered an incorrect symbol" 
    #   end
    # end
    # respond_to do |format|
    #   format.js {render partial: 'users/result'}
    # end

  


  	if params[:stock].blank?
      flash.now[:danger] = "you have entered an empty search string"  
    else
  		@stock = Stock.new_from_lookup(params[:stock])

      flash.now[:danger] = "you have entered an incorrect symbol" unless @stock
  	end
    respond_to do |format|
      format.js {render partial: 'users/result'}
    end

  

  end
  
end
