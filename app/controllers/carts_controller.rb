class CartsController < ApplicationController
  def index
    if current_user
      @cart = current_user.cart
    else
      flash[:alert] = "You have to be logged in to see the cart"
    end
  end
  def new
    @cart = current_user.cart
    if @cart.cart_items.empty?
      flash[:alert] = "You need to add something to your cart first!"
      redirect_to items_path
    else
      @cart.cart_items.clear
      flash[:notice] = "Thank you for your patronage!"
      redirect_to items_path
    end
  end
end
