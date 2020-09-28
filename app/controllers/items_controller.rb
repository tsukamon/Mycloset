class ItemsController < ApplicationController
  before_action :authenticate_user!, except: :index
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    if user_signed_in?
      @item = Item.all.where(user_id: current_user.id)
      @item = @item.order('created_at DESC')
      @p = @item.ransack(params[:q])
      set_category_column
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
  end

  def edit
  end

  def update
    if @item.update(item_params)
      redirect_to item_path(@item.id)
    else
      render 'edit'
    end
  end

  def destroy
    if @item.destroy
      redirect_to root_path
    else
      render 'show'
    end
  end

  def search
    @item = Item.all.where(user_id: current_user.id)
    @p = @item.ransack(params[:q])
    @results = @p.result.includes(:category).order('created_at DESC')
  end

  private

  def set_category_column
    @category_name = Category.select('name').distinct
  end

  def item_params
    params.require(:item).permit(:explanation, :category_id, :season_id, :brand, :purchase_day, :price, :place, :image).merge(user_id: current_user.id)
  end

  def set_item
    @item = Item.find(params[:id])
  end

  def set_user
    redirect_to root_path unless user_signed_in? && current_user.id == @item.user_id
  end
end
