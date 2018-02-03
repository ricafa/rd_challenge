class Api::V1::CurrencyController < ActionController::API
  before_action :set_currency, only: [:show, :update, :destroy]

  def index
    @currencies = Currency.all

    render json: @currencies
  end

  def show
    render json: @currency
  end

  def create
    @currency = Currency.new(currency_params)

    if @currency.save
      render json: @currency, status: :created, location: @currency
    else
      render json: @currency.errors, status: :unprocessable_entity
    end
  end

  def update
    if @currency.update(currency_params)
      render json: @currency
    else
      render json: @currency.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @currency.destroy
  end

  private
    def set_currency
      @currency = Currency.find(params[:id])
    end

    def currency_params
      params.require(:currency).permit(:description)
    end
end