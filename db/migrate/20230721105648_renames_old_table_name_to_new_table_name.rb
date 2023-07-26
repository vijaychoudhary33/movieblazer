class RenamesOldTableNameToNewTableName < ActiveRecord::Migration[7.0]
  def change
    rename_table :rental,:rentals
  end
end
