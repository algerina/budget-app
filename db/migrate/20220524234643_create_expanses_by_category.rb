class CreateExpansesByCategory < ActiveRecord::Migration[7.0]
  def change
    create_table :expanses_by_categories do |t|

      t.timestamps
    end
  end
end
