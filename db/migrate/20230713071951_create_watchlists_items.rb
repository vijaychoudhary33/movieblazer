class CreateWatchlistsItems < ActiveRecord::Migration[7.0]
  def change
    create_table :watchlists_items do |t|
      t.references :watchlist, null: false, foreign_key: true
      t.references :movie, null: false, foreign_key: true

      t.timestamps
    end
  end
end
