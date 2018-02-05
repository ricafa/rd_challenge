class RemovePriceFromManagments < ActiveRecord::Migration[5.0]
  def change
  	remove_column :managements, :price
  end
end
