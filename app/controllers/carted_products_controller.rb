class CartedProductsController < ApplicationController
  def create
    cartedproduct = CartedProduct.new(
      user_id: current_user.id,
      product_id: params["product_id"],
      quantity: params["quantity"],
    )

    if cartedproduct.save
      render json: cartedproduct
    else
      render json: { errors: cartedproduct.errors.full_messages },
             status: 420
    end
  end
end
