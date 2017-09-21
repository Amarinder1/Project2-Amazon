class ItemsController < ApplicationController
  # index
  def index
    @items = Item.all
  end

  #show
  def show
    @item = Item.find(params[:id])
  end

  #making new item
  def new
    @item = Item.new
  end

  #creating it
  def create
    @item = Item.create!(item_params)
    redirect_to items_path
  end

  #editing an item
  def edit
    @item = Item.find(params[:id])
  end

  #updating item
  def update
    @item = Item.find(params[:id])
    @item.update(item_params)
    redirect_to items_path(@item)
  end

  #deleting an item
  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to items_path
  end

  #adding item to cart
  #WILL ONLY WORK IF USER IS SIGNED IN. ELSE WILL THROW AN ERROR
  def add_to_cart
    @item = Item.find(params[:id])
    if current_user
      current_user.cart.cart_items.create(item: @item)
      flash[:notice] = "#{@item.name} was added to the cart"
    else
      flash[:alert] = "You have to be signed in to add items to your cart"
    end
    redirect_to items_path
  end

  def remove_from_cart
    @item = Item.find(params[:id])
    current_user.cart.cart_items.find_by(item_id: params[:id]).destroy
    redirect_to items_path
    flash[:notice] = "#{@item.name} was removed from the cart"
  end

  def checkout
    redirect_to items_path
  end

  private
  def item_params
    params.require(:item).permit(:name, :pic_url, :price)
  end
end
