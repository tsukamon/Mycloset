class CategoriesController < ApplicationController
  def index
    @categories = Category.all.where(user_id: current_user.id)
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to categories_path
    else
      render 'index'
    end
  end

  def destroy
    set_category
    if @category.destroy
      redirect_to categories_path
    else
      render 'index'
    end
  end

  def update
    set_category
    if @category.update(category_params)
      redirect_to categories_path
    else
      render 'index'
    end
  end

  private
  
  def category_params
    params.require(:category).permit(:name).merge(user_id: current_user.id)
  end
  
  def set_category
    @category = Category.find(params[:id])
  end
end
