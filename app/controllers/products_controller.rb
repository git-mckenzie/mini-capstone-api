class ProductsController < ApplicationController
  def index
    products = Product.all
    render json: products.as_json
  end

  def display_product1
    products = Product.find_by id: 1
    render json: products.as_json
  end

  def display_product2
    products = Product.find_by id: 2
    render json: products.as_json
  end

  def query_display_any
    products = Product.find
    render json: products.as_json
  end

  # def segment_display_any
  #   products = Product.find(params[:id])
  #   render json: products.as_json
  # end

  def show
    products = Product.find(params[:id])
    render json: products.as_json
  end

  def create
    product = Product.new(
      name: params["name"]
      price: params["price"]
      image_url: params["image_url"]
      description: params["description"]
    )
    product.save
    render json: products.as_json
    end
end
