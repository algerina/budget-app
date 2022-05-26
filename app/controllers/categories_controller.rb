class CategoriesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_category, only: %i[show edit update destroy]

  def index
  @categories = current_user.categories
end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(user_id: current_user.id, name: category_params[:name], icon: category_params[:icon])
    flash[:notice] = if @category.save
      'Category created with success'
    else
      'Try again'
    end
redirect_to categories_path
end

  private

  def set_category
    @category = Category.includes(:expanses).find(params[:id])
  end

  def category_params
    params.require(:category).permit(:name, :icon, :user_id)
  end
end
