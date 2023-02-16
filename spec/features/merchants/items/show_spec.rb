require 'rails_helper'

RSpec.describe 'merchant item show page' do
  describe 'As a visitor' do
    describe 'When I visit a merchant item show page' do
      before :each do
        visit merchant_item_path(1,4)
      end

      it 'I should see the name of the item, description, and unit_price' do
        expect(page).to have_content("Item Nemo Facere")
        expect(page).to have_content("Sunt eum id eius magni consequuntur delectus veritatis. Quisquam laborum illo ut ab. Ducimus in est id voluptas autem.")
        expect(page).to have_content("$42.91")
      end
    end
  end
end