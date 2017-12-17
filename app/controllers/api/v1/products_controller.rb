class API::V1::ProductsController < ApplicationController
  respond_to :json, :js
  def index
    products = Product.all
    render json: products, only: [:id, :logo, :name, :description]
  end
end
