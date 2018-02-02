feature 'Create Management ' do
	scenario 'valid' do
		visit '/managements/new'
		@company = Company.create(name: 'Barbosa LTDA ME', cnpj: '88.563.862/0001-73')
		@product = Product.create(description: 'Curso')
		@currency = Currency.create(description: 'USD')
		fill_in 'Product', with: @product
		fill_in 'Company', with: @company
		fill_in 'Currency', with: @currency
		fill_in 'Price', with: '3245.58'
		click_on 'Create Management'
		expect(page).to have_content("Management was successfully created.")
	end

	scenario 'invalid company' do
		click_on 'Create Management'
		expect(page).to have_content("Company can't be blank")
	end
end