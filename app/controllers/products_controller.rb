class ProductsController < ApplicationController
  def display_all
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

  def segment_display_any
    products = Product.find(params[:id])
    render json: products.as_json
  end
end
