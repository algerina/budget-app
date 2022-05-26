class ExpensesController < ApplicationController
  before_action :authenticate_user!

  def index
    @expanses = Expanse.all.where(user_id: current_user.id)
  end

  def new
    @expanse = Expanse.new
  end

  def create
    @expanse = Expanse.new(expanse_params)
    @expanse.user = current_user

  if @expanse.save
    flash[:notice] = 'Transaction created with success'
  else
    flash[:alert] = 'Try again'
  end
  redirect_to categories_path
end

private

 def expanse_params
  params.require(:expanse).permit(:name, :amount, category_ids: [])
 end
end
