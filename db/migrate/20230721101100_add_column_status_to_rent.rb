class AddColumnStatusToRent < ActiveRecord::Migration[7.0]
  def change
    add_column :rents, :status, :string
  end
end
