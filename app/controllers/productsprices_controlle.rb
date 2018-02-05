class ProductsController < ApplicationController
  before_action :set_productsprice, only: [:show, :edit, :update, :destroy]

  def create
		@productsprice = Productsprice.craete(productsprice_params)  		
  	if @productsprice.save
  		redirect_to @productsprice.product, notice: 'Price was successfully created.'
  	else
  		redirect_to @product, notice: 'Price could not be saved..'
  	end
  end

  private
	def set_product
    @productsprice = Productsprice.find(params[:id])
  end

  def productsprice_params
    params.require(:productsprice).permit(:description, :id_product, :id_currency)
  end
end