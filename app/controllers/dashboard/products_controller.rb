class Dashboard::ProductsController < ApplicationController

  etag{}
  layout 'dashboard'
  before_action :set_product, onyl: [:show, :edit, :update, :destroy]
  rescue_from ActiveRecord::RecordNotFound, with: :exception
  respond_to :html, :json, :js

  def index
    @products = Product.all
    respond_with(@products)
  end

  def show
    respond_with(@product)
  end

  def new
    @product = Product.new
    respond_with(@product)
  end

  def edit
  end

  def create
    @product = Product.new(product_params)
    @product.save
    respond_with(:dashboard, @product)
  end

  def update
    @product.update(product_params)
    respond_with(:dashboard, @product)
  end

  def destroy
    @product.destroy
    respond_with(:dashboard, @product)
  end

  private
    def set_product
      @product = Product.find(params[:id])
    end

    def product_params
      params.require(:product).permit(:logo, :name, :description, :slug, :tags)
    end
end
