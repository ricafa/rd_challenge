class Product < ApplicationRecord
	has_many :managements
	validates :description, presence: true, length: {minimum: 2}
end
