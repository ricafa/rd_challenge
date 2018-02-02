class Management < ApplicationRecord
  belongs_to :product
  belongs_to :company
  belongs_to :currency

  validates_presence_of :company, :product, :currency, :price
end
