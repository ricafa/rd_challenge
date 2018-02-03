class Api::V1::ProductsController < ActionController::API
  before_action :set_product, only: [:show, :update, :destroy]

  def index
    @products = Product.all.order(:description)

    render json: @products
  end

  def show
    render json: @product
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      render json: @product, status: :created, location: @product
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  def update
    if @product.update(product_params)
      render json: @product
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  def destroy
    if @product.destroy
    	render json: {msg: "Product deleted successfully"}, status: :ok
    else
    	render json: {msg: "The product can't be deleted"}, status: :error
    end
  end

  private
    def set_product
    	
      #@product = Product.find(params[:id])    
      @product = Product.find(params.require(:id))    
    end

    def product_params
      params.require(:product).permit(:description)
    end
end