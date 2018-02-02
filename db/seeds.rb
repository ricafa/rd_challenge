# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
cnpj = ['91.895.814/0001-97','34.997.273/0001-74',
			'99.584.036/0001-27','03.406.501/0001-60',
			'94.598.306/0001-35']
if Product.count < 5
	1.upto(5) do |i| 
		Product.create( description: "Product0#{i}")
		Company.create(name: "Company0#{i}", cnpj: cnpj[i] )
	end
	#currenciesz
	Currency.create(description: 'USD')
	Currency.create(description: 'BRL')
	Currency.create(description: 'EUR')

	#managements
	5.times do |i|
		Management.create(company:  Company.order("RANDOM()").limit(1).first, 
											product:  Product.order("RANDOM()").limit(1).first, 
											currency: Currency.order("RANDOM()").limit(1).first,
											price: 		rand(100))
	end
	puts 'Currencies, Companies, Products and Managements succesfully created.'
else
	puts "Everything is fine."
end
