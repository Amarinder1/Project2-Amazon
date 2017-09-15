class ItemsController < ApplicationController
  # index
  def index
    @items = Item.all
  end

  #show
  def show
    @item = Item.find(params[:id])
  end

  private
  def comment_params
    params.require(:item).permit(:name, :pic_url)
  end
end
