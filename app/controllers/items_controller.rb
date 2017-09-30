class ItemsController < ApplicationController
  # AS - here your method names are really clear as to what they are doing
  # No need to comment what each is doing since that is the same as the method name
  # This is really clean code!
  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.create!(item_params)
    redirect_to items_path
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    @item.update(item_params)
    redirect_to items_path(@item)
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to items_path
  end

  # WILL ONLY WORK IF USER IS SIGNED IN. ELSE WILL THROW AN ERROR
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
