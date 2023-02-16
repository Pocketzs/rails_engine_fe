require 'rails_helper'

RSpec.describe ItemService do
  describe 'class methods' do
    describe '.find_item_data_by_id' do
      it 'returns a hash of an items data given an item id' do
        item = ItemService.find_item_data_by_id('4')
        expect(item).to be_a(Hash)
        expect(item).to have_key(:data)
        data = item[:data]
        expect(data).to be_a(Hash)
        expect(data).to have_key(:id)
        expect(data[:id]).to be_a(String)
        expect(data).to have_key(:type)
        expect(data[:type]).to be_a(String)
        expect(data).to have_key(:attributes)
        expect(data[:attributes]).to be_a(Hash)
        attributes = data[:attributes]
        expect(attributes).to have_key(:name)
        expect(attributes[:name]).to be_a(String)
        expect(attributes).to have_key(:description)
        expect(attributes[:description]).to be_a(String)
        expect(attributes).to have_key(:unit_price)
        expect(attributes[:unit_price]).to be_a(Float)
        expect(attributes).to have_key(:merchant_id)
        expect(attributes[:merchant_id]).to be_a(Integer)
      end
    end
  end
end