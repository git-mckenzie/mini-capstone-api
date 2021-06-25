class Product < ApplicationRecord
  validates :name, uniqueness: true
  validates :name, :price, :description, :image_url, presence: true
  validates :price, numericality: { greater_than: 0 }

  def is_discounted?
    price <= 10
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end

  def supplier
    Supplier.find_by(id: supplier_id)
  end
end
