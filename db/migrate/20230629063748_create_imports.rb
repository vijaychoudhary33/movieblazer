class CreateImports < ActiveRecord::Migration[7.0]
  def change
    create_table :imports do |t|
      t.string :name
      t.integer :size
      t.string :status
      t.string :path
      t.string :type
      t.datetime :imported_at
      t.datetime :end_imported_at

      t.timestamps
    end
  end
end
