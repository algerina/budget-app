class AddExpanseRefToExpansesByCategories < ActiveRecord::Migration[7.0]
  def change
    add_reference :expanses_by_categories, :expanse, null: false, foreign_key: true
  end
end
