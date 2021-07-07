class Product < ApplicationRecord
  has_many :orders
  belongs_to :supplier
  belongs_to :carted_products
  belongs_to :order
  has_many :category_products
  has_many :categories, through: :category_products

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
