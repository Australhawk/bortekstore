class Producto < ActiveRecord::Base
  attr_accessible :description, :foto, :name, :precio, :stock, :category_id, :featured
  has_many :cart_items
  has_many :carts, :through => :cart_items
  belongs_to :category
  
  validates_presence_of :name, :precio, :stock, :category_id, :foto, :description
end
