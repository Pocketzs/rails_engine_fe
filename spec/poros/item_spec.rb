require 'rails_helper'

RSpec.describe Item do
  describe '#initialize' do
    it 'exists and has attributes' do
      data = {
          "id": "4",
          "type": "item",
          "attributes": {
              "name": "Item Nemo Facere",
              "description": "Sunt eum id eius magni consequuntur delectus veritatis. Quisquam laborum illo ut ab. Ducimus in est id voluptas autem.",
              "unit_price": 42.91,
              "merchant_id": 1
          }
      }

      item = Item.new(data)
      expect(item).to be_a(Item)
      expect(item.id).to eq(4)
      expect(item.type).to eq("item")
      expect(item.name).to eq("Item Nemo Facere")
      expect(item.description).to eq("Sunt eum id eius magni consequuntur delectus veritatis. Quisquam laborum illo ut ab. Ducimus in est id voluptas autem.")
      expect(item.unit_price).to eq(42.91)
      expect(item.merchant_id).to eq(1)
    end
  end
end