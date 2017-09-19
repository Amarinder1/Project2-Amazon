class CartsController < ApplicationController
  def index
    if current_user
      @cart = current_user.cart
    else
      flash[:alert] = "You have to be logged in to see the cart"
    end
  end
end
