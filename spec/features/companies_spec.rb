feature 'Create company ' do

	before do
		visit '/companies/new'
	end

	scenario 'valid' do
		fill_in 'Name', with: 'company01'
		fill_in 'Cnpj', with: '37.484.361/0001-60'
		click_on 'Create Company'
		expect(page).to have_content("Company was successfully created.")
	end

	scenario 'invalid name' do
		click_on 'Create Company'
		expect(page).to have_content("Name can't be blank")
	end

	scenario 'invalid cnpj' do
		click_on 'Create Company'
		expect(page).to have_content("Cnpj can't be blank")
	end
end

feature 'List companies' do
	before do
		visit '/companies'
	end

	scenario 'all of them' do
		expect(page).to have_content('Name')
	end

end