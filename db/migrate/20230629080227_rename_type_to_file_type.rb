class RenameTypeToFileType < ActiveRecord::Migration[7.0]
  def change
    rename_column :imports, :type, :file_type
  end
end
