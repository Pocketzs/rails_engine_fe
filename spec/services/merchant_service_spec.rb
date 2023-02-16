require 'rails_helper'

RSpec.describe MerchantService do
  describe 'class methods' do
    describe '.all_merchants_data' do
      it 'returns a hash of all merchants data' do
        merchants = MerchantService.all_merchants_data
        # require 'pry'; binding.pry
        expect(merchants).to be_a(Hash)
        expect(merchants).to have_key(:data)
        data = merchants[:data]
        expect(data).to be_a(Array)
        merchant1 = data.first
        expect(merchant1).to be_a(Hash)
        expect(merchant1).to have_key(:id)
        expect(merchant1[:id]).to be_a(String)
        expect(merchant1).to have_key(:type)
        expect(merchant1[:type]).to be_a(String)
        expect(merchant1).to have_key(:attributes)
        attributes = merchant1[:attributes]
        expect(attributes).to be_a(Hash)
        expect(attributes).to have_key(:name)
        expect(attributes[:name]).to be_a(String)
      end
    end

    describe ".all_item_data_for_merchant" do
      it 'returns a hash of all the item data of a particular merchant' do
        merchant_items = MerchantService.all_item_data_for_merchant('1')
        expect(merchant_items).to be_a(Hash)
        expect(merchant_items).to have_key(:data)
        items = merchant_items[:data]
        expect(items).to be_a(Array)
        items.each do |item|
          expect(item).to be_a(Hash)
          expect(item).to have_key(:id)
          expect(item[:id]).to be_a(String)
          expect(item).to have_key(:type)
          expect(item[:type]).to be_a(String)
          expect(item).to have_key(:attributes)
          expect(item[:attributes]).to be_a(Hash)
          expect(item[:attributes]).to have_key(:name)
          expect(item[:attributes][:name]).to be_a(String)
          expect(item[:attributes]).to have_key(:description)
          expect(item[:attributes][:description]).to be_a(String)
          expect(item[:attributes]).to have_key(:unit_price)
          expect(item[:attributes][:unit_price]).to be_a(Float)
          expect(item[:attributes]).to have_key(:merchant_id)
          expect(item[:attributes][:merchant_id]).to be_a(Integer)
        end
      end
    end
  end
end