class ItemsController < ApplicationController
  def index
    if user_signed_in?
      @item = Item.all.where(user_id: current_user.id)
      @item = @item.order('created_at DESC')
    end
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
    @item = Item.find(params[:id]) 
  end

  private

  def item_params
    params.require(:item).permit(:explanation, :category_id, :season_id, :brand, :purchase_day, :price, :place, :image).merge(user_id: current_user.id)
  end
end
