class Company < ApplicationRecord
	has_many :managements
	validates_presence_of :name, :cnpj

	def namePlusCnpj
		cnpj+' - '+name.capitalize
	end
end
