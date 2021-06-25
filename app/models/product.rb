class Product < ApplicationRecord
  def is_discounted?
  end

  validates :name, uniqueness: true
  validates :name, :price, :description, :image_url, presence: true
  validates :price, numericality: true
end
