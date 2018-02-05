class Productsprice < ApplicationRecord
  belongs_to :product
  belongs_to :currency
end
