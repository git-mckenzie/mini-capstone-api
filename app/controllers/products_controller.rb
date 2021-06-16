class ProductsController < ApplicationController
  def display_all
    products = Product.all
    render json: products.as_json
  end

  def display_product1
    products = Product.first
    render json: products.as_json
  end

  def display_product2
    products = Product.second
    render json: products.as_json
  end
end
