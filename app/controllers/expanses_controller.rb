class ExpansesController < ApplicationController

  def index
    @category = Category.find(params[:category_id])
    @current_user = current_user
    @expanse_categories = Category.find(params[:category_id]).expanse_categories.order(created_at: :desc)
  end

  def new
    @category = Category.find(params[:category_id])
    @categories = current_user.categories
  end

  def create
    @expanse = current_user.expanses.new(name: params[:name], amount: params[:amount])

    if @expanse.save
      @expanse_category = ExpanseCategory.new(category_id: params[:categories], expanse_id: @expanse.id)
      @expanse_category.save
      redirect_to expanse_categories_path(category_id: params[:categories]), notice: 'Transaction created successfully!'
    else
      flash[:alert] = 'Try again!'
      render :new
    end
  end
end
