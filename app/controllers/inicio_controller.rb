class InicioController < ApplicationController
  before_filter :initialize_cart
  skip_authorization_check
  def index
    @categories = Category.order('name').all
    @featured = Producto.where(:featured == true).limit(2).all
    @productos = Producto.order('id DESC').limit(2).all
  end
end
