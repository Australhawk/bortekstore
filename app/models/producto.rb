class Producto < ActiveRecord::Base
  attr_accessible :description, :foto, :name, :precio, :stock
end
