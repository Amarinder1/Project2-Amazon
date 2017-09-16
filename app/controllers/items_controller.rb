class ItemsController < ApplicationController
  # index
  def index
    @items = Item.all
  end

  #show
  def show
    @item = Item.find(params[:id])
  end

  #adding item to cart
  def add_to_cart
    @item = Item.find(params[:id])
    @cart = Cart.new
    @cart.cart_items.create!(item: @item)
    redirect_to items_path, notice: "#{@item.name} was added to the cart"
  end

  private
  def comment_params
    params.require(:item).permit(:name, :pic_url)
  end
end
