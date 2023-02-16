class MerchantsController < ApplicationController
  def index
    @merchants = MerchantFacade.all_merchants
  end

  def show
    # require 'pry'; binding.pry
    @merchant_name = params[:merchant_name]
    @items = MerchantFacade.items_for_merchant(params[:id])
  end
end