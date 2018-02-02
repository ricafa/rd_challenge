feature 'Create product ' do

	before do
		visit '/products/new'
	end

	scenario 'valid' do
		fill_in 'Description', with: 'Product01'
		click_on 'Create Product'
		expect(page).to have_content("Product was successfully created.")
	end

	scenario 'invalid' do
		click_on 'Create Product'
		expect(page).to have_content("Description can't be blank")
	end
end