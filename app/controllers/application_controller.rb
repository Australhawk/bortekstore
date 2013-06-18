class ApplicationController < ActionController::Base
  check_authorization :unless => :devise_controller?
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end
  
  private
  def initialize_cart
    if session[:cart_id]
    	@cart = Cart.find(session[:cart_id])
     
    else
      	@cart = Cart.create
      	session[:cart_id] = @cart.id
    end
  end
end
