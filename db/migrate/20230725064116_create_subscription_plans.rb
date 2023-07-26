class CreateSubscriptionPlans < ActiveRecord::Migration[7.0]
  def change
    create_table :subscription_plans do |t|
      t.string :name
      t.integer :duration
      t.decimal :price, precision: 8, scale: 2

      t.timestamps
    end
  end
end
