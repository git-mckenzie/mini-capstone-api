class ProductsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def index
    products = Product.all
    render json: products.as_json
  end

  def create
    products = Product.new(
      name: params["name"],
      price: params["price"],
      image_url: params["image_url"],
      description: params["description"],
      inventory: params["inventory"],
      supplier_id: params["supplier_id"],
    )
    if products.save
      render json: products
    else
      render json: { errors: products.errors.full_messages },
             status: 420
    end
  end

  def show
    products = Product.find(params[:id])
    render json: products
  end

  def update
    product = Product.find_by(id: product_id)

    product.name = params["name"] || product.name
    product.price = params["price"] || product.price
    product.image_url = params["image_url"] || product.image_url
    product.description = params["description"] || product.description
    product.inventory = params["inventory"] || product.inventory
    product.supplier_id = params["supplier_id"] || product.supplier_id

    if product.save
      render json: product.as_json
    else
      render json: { errors: product.errors.full_messages },
             status: 451
    end
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy
    render json: { message: "Product destroyed!" }
  end
end
