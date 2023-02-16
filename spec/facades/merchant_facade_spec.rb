require 'rails_helper'

RSpec.describe MerchantFacade do
  describe 'class methods' do
    describe 'all_merchants' do
      it 'returns an array of Merchant objects' do
        merchants = MerchantFacade.all_merchants
        expect(merchants).to be_a(Array)
        merchants.each do |merchant|
          expect(merchant).to be_a(Merchant)
          expect(merchant.name).to be_a(String)
          expect(merchant.type).to be_a(String)
          expect(merchant.id).to be_a(Integer)
        end
      end
    end

    describe '.items_for_merchant' do
      it 'returns an array of Item object for a particular merchant id' do
        items = MerchantFacade.items_for_merchant("1")
        expect(items).to be_a(Array)
        items.each do |item|
          expect(item).to be_a(Item)
          expect(item.id).to be_a(Integer)
          expect(item.type).to be_a(String)
          expect(item.name).to be_a(String)
          expect(item.description).to be_a(String)
          expect(item.unit_price).to be_a(Float)
          expect(item.merchant_id).to be_a(Integer)
        end
      end
    end
  end
end