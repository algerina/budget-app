class CreateExpanseCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :expanse_categories do |t|

      t.timestamps
    end
  end
end
