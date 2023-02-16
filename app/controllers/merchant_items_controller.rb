class MerchantItemsController < ApplicationController
  def show
    @item = ItemFacade.find_by_id(params[:id])
  end
end