class CategoriesController < ApplicationController
  before_action :authenticate_user!
  def index
  @categories = Category.all
  # @current_user = Current_user
end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params.merge(user: current_user))
    if @category.save
      flash[:success] = 'Category has been added successfully'
      redirect_to categories_path
    else
      flash[:alert] = 'Category  not added'
      redirect_to new_category_path
    end
  end

  def category_params
    params.require(:category).permit(:name, :icon, :user_id)
  end
end
