class CartedProduct < ApplicationRecord
  has_many :products
  belongs_to :user
  belongs_to :order, optional: true
end
