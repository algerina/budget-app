class ChangeAmountInExpanses < ActiveRecord::Migration[7.0]
  def change
    change_column(:expanses, :amount, :decimal) 
  end
end
