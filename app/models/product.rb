class Product < ApplicationRecord
	has_many :managements
	validates_presence_of :description
end
