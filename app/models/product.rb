class Product < ApplicationRecord
	has_many :managements
	has_many :productsprices
	validates :description, presence: true, length: {minimum: 2}
end
