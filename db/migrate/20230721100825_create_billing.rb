class CreateBilling < ActiveRecord::Migration[7.0]
  def change
    create_table :billings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :rent, null: false, foreign_key: true
      t.date :billing_date
      t.float :total_amount
      t.string :payment_method

      t.timestamps
    end
  end
end
