class ProductsController < ApplicationController
  def display_all
    products = Product.all
    render json: products.as_json
  end
end
