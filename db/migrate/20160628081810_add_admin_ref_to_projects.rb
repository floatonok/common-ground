class AddAdminRefToProjects < ActiveRecord::Migration[5.0]
  def change
    add_reference :projects, :admin, foreign_key: true
  end
end
