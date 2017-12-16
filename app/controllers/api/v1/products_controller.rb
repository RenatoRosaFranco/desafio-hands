class API::V1::ProductsController < ApplicationController
  respond_to :json
  def index
    products = Product.all
    render json: products
  end
end
