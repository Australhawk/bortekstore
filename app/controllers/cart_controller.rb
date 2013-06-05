class CartController < ApplicationController
	before_filter :initialize_cart

	def add
		@producto = Producto.find(params[:id])
		@cart.add(@producto,@cart)
		redirect_to cart_path
	end
	def show
		@cart = Cart.find(session[:cart_id])
		@items = @cart.productos
		@ids = @cart.cart_items
	end
	def remove
		@items = @cart.cart_items
		@item = @items.find(params[:id])
		@item.destroy
		redirect_to cart_path
	end
end
