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
    products = Product.new(
      name: params["name"],
      price: params["price"],
      image_url: params["image_url"],
      description: params["description"],
    )
    products.save
    render json: products.as_json
  end

  def update
    product_id = params["id"]
    product = Product.find_by(id: product_id)

    product.name = params["name"] || product.name
    product.price = params["price"] || product.price
    product.image_url = params["image_url"] || product.image_url
    product.description = params["description"] || product.description

    product.save
    render json: product.as_json
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy
    render json: { message: "Product destroyed!" }
  end
end
