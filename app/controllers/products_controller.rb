class ProductsController < ApplicationController
  respond_to :json
  def index
    @products = Product.all
    render json: @products, only: [:logo, :name, :description]
  end
end
