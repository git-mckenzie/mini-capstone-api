class SuppliersController < ApplicationController
  def index
    suppliers = Supplier.all
    render json: suppliers.as_json
  end

  def show
    suppliers = Supplier.find(params[:id])
    render json: suppliers.as_json
  end

  def create
    suppliers = Supplier.new(
      name: params["name"],
      email: params["email"],
      phone_number: params["phone_number"],
    )
    if suppliers.save
      render json: suppliers
    else
      render json: { errors: suppliers.errors.full_messages },
             status: 406
    end
  end

  def update
    supplier_id = params["id"]
    supplier = Supplier.find_by(id: supplier_id)

    supplier.name = params["name"] || supplier.name
    supplier.email = params["email"] || supplier.email
    supplier.phone_number = params["phone_number"] || supplier.phone_number

    if supplier.save
      render json: supplier.as_json
    else
      render json: { errors: supplier.errors.full_messages },
             status: 451
    end
  end

  def destroy
    supplier = Supplier.find(params[:id])
    supplier.destroy
    render json: { message: "Supplier destroyed!" }
  end
end
