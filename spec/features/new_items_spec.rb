require 'rails_helper'
RSpec.describe 'Item' do
        context 'context' do
	before do
	    item = Item.create(item:'The Merciless Ones', link:'https://textbookcentre.com/catalogue/the-merciless-ones_323031/', cost:'$100')
	    visit root_path
    click_link('New Item')
end
    it 'load page to create a new wishlist item' do
        expect(page).to have_field('Item')
        expect(page).to have_field('Link')
        expect(page).to have_field('Cost')
    end
        end
end