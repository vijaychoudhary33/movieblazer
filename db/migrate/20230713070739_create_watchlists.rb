class CreateWatchlists < ActiveRecord::Migration[7.0]
  def change
    create_table :watchlists do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.string :visibility

      t.timestamps
    end
  end
end
