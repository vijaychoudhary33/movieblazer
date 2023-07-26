class RemovecolumnusFromRent < ActiveRecord::Migration[7.0]
  def change
    remove_column :rentals, :date, :date
    remove_column :rentals, :Rent_Hour, :time
  end
end
