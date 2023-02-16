require 'rails_helper'

RSpec.describe ItemFacade do
  describe 'class methods' do
    describe '.find_by_id' do
      it 'returns an Item object given an item id' do
        item = ItemFacade.find_by_id('4')
        expect(item).to be_a(Item)
      end
    end
  end
end