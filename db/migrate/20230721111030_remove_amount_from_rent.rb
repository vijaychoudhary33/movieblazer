class RemoveAmountFromRent < ActiveRecord::Migration[7.0]
  def change
    remove_column :rentals, :amount, :float
  end
end
