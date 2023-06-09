class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :name
      t.text :description
      t.integer :rating
      t.text :genre
      t.string :language
      t.string :director
      t.date :release_date
      t.time :run_time

      t.timestamps
    end
  end
end
