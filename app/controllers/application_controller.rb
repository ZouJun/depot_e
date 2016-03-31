class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :authorize

  private
  def current_cart
    cart = Cart.where(id: session[:cart_id]).first_or_create do |cart|
    end
    session[:cart_id] = cart.id
    cart
  end

  protected
  def authorize
    unless User.find_by_id(session[:user_id])
      redirect_to login_path, :notice => "Please log in"
    end
  end
  end
