class AddCategoryRefToCreateExpansesByCategory < ActiveRecord::Migration[7.0]
  def change
    add_reference :create_expanses_by_categories, :category, null: false, foreign_key: true
  end
end
