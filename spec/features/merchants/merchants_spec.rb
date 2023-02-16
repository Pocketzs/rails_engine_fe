require 'rails_helper'

RSpec.describe 'Merchants pages' do
  describe 'As a Visitor' do
    describe 'When I visit "/merchants"' do
      before :each do
        visit '/merchants'
      end

      it 'I should see a list of merchants by name' do
        expect(page).to have_link("Schroeder-Jerde")
        expect(page).to have_link("Klein, Rempel and Jones")
        expect(page).to have_link("Willms and Sons")
      end

      describe 'and when I click the merchants name' do
        before :each do
          click_link("Schroeder-Jerde")
        end

        it 'I should be on page "/merchants/:id' do
          expect(current_path).to eq("/merchants/1")
        end
        
        it "And I should see a list of items that merchant sells" do
          expect(page).to have_link("Item Nemo Facere")
          expect(page).to have_link("Item Expedita Aliquam")
          expect(page).to have_link("Item Provident At")
        end

        describe "When I click on an item that is listed" do
          before :each do
            click_link("Item Nemo Facere")
          end

          it 'I am taken to that items show page' do
            expect(current_path).to eq("/merchants/1/items/4")
          end
        end
      end
    end
  end
end