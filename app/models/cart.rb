class Cart < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :cart_items
  has_many :productos, :through => :cart_items

  def add(producto,cart,amount=1)
  	@item = CartItem.new(:cart_id => cart.id, :producto_id => producto.id, :amount => amount, :price => producto.precio)
  	@item.save!
  end
end
