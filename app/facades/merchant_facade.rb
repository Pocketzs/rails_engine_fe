class MerchantFacade
  def self.all_merchants
    MerchantService.all_merchants_data[:data].map do |merchant_data|
      Merchant.new(merchant_data)
    end
  end

  def self.items_for_merchant(merchant_id)
    MerchantService.all_item_data_for_merchant(merchant_id)[:data].map do |item_data|
      Item.new(item_data)
    end
  end
end