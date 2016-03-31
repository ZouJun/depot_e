class StoreController < ApplicationController
  skip_before_filter :authorize
  def index
    @products = Product.all.paginate :page => params[:page], :per_page => 4
    @cart = current_cart
  end
end
