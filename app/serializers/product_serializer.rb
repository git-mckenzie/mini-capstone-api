class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :image_url, :description, :inventory

  belongs_to :supplier
  has_many :categories
end
