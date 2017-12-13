class ProductsController < ApplicationController
  respond_to :html, :json, :js
  def index
    @products = Product.all
    render json: @products, only: [:logo, :name, :description]
  end
end
