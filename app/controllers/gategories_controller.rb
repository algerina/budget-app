class GategoriesController < ApplicationController
  def index
  @categories = Category.all
end

def show 
end

  def new
  @category = category.new
  end

  def create
  @category = category.new(category_params)
  end

  def category_params
    params.require(:category).permit(:name, :icon, :user_id)
  end
end
