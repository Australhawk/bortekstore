class Producto < ActiveRecord::Base
  attr_accessible :description, :foto, :name, :precio, :stock
  has_many :cart_items
  has_many :carts, :through => :cart_items
end
