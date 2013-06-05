class CartItem < ActiveRecord::Base
  attr_accessible :cart_id, :producto_id, :amount, :price 
  belongs_to :cart
  belongs_to :producto 
end
