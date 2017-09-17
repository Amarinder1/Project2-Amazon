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
  #WILL ONLY WORK IF USER IS SIGNED IN. ELSE WILL THROW AN ERROR
  def add_to_cart
    @item = Item.find(params[:id])
    if current_user
      current_user.cart.cart_items.create(item: @item)
      flash[:notice] = "#{@item.name} was added to the cart"
    else
      flash[:alert] = "You have to be logged in to add an item to the cart"
    end
    redirect_to items_path
  end

  def remove_from_cart
    @item = Item.find(params[:id])
    current_user.cart.cart_items.find_by(item_id: params[:id]).destroy
    redirect_to items_path, notice: "#{@item.name} was removed from the cart"
  end

  def items_in_cart
    @items = current_user.cart.items
  end

  private
  def item_params
    params.require(:item).permit(:name, :pic_url, :price)
  end
end
