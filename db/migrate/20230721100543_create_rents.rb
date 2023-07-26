class CreateRents < ActiveRecord::Migration[7.0]
  def change
    create_table :rents do |t|
      t.references :user, null: false, foreign_key: true
      t.references :movie, null: false, foreign_key: true
      t.time :Rent_Hour
      t.float :amount
      t.date :date

      t.timestamps
    end
  end
end
