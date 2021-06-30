class OrderSerializer < ActiveModel::Serializer
  attributes :id, :quanity, :subtotal, :tax, :total

  belongs_to :product
end
