class AddColumnToRentals < ActiveRecord::Migration[7.0]
  def change
    add_column :rentals, :starting_date, :date
    add_column :rentals, :end_date, :date
    
  end
end
