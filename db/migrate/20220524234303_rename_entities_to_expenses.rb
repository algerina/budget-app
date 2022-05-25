class RenameEntitiesToExpenses < ActiveRecord::Migration[7.0]
  def change
    rename_table :entities, :expanses
  end
end
