class UpdateColumnInsubscriptionPlans < ActiveRecord::Migration[7.0]
  def change
    change_column :subscription_plans , :price, :decimal

  end
end
