feature 'Create currency ' do

	before do
		visit '/currencies/new'
	end

	scenario 'valid' do
		fill_in 'Description', with: 'currency01'
		click_on 'Create Currency'
		expect(page).to have_content("Currency was successfully created.")
	end

	scenario 'invalid description' do
		click_on 'Create Currency'
		expect(page).to have_content("Description can't be blank")
	end
end