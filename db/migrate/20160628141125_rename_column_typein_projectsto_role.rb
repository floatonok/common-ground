class RenameColumnTypeinProjectstoRole < ActiveRecord::Migration[5.0]
  def change
    rename_column :roles, :type, :role
  end
end
