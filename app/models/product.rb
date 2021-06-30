class Product < ApplicationRecord
  has_many :orders
  belongs_to :supplier

  validates :name, uniqueness: true
  validates :name, :price, :description, :image_url, presence: true
  validates :price, numericality: { greater_than: 0 }

  def tax
    price * 0.09
  end

  def total
    price + tax
  end

  def is_discounted?
    price <= 10
  end
end
