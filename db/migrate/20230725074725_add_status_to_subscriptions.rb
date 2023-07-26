class AddStatusToSubscriptions < ActiveRecord::Migration[7.0]
  def change
    add_column :subscriptions, :status, :string
  end
end
