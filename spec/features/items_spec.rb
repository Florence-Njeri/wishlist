require 'rails_helper'
RSpec.describe 'Item' do
        context 'context' do
	before do
	    item = Item.create(item:'The Merciless Ones', link:'https://textbookcentre.com/catalogue/the-merciless-ones_323031/', cost:'$100')
	    visit root_path
end
    it 'displays a list items with the item name, link to buy it and cost ' do
        expect(page).to have_text('The Merciless Ones')
        expect(page).to have_text('$100')
        expect(page).to have_link('New Item')
    end
   end 
end