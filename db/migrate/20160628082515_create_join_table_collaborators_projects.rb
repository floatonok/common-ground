class CreateJoinTableCollaboratorsProjects < ActiveRecord::Migration[5.0]
  def change
    create_join_table :collaborators, :projects do |t|
      # t.index [:collaborator_id, :project_id]
      # t.index [:project_id, :collaborator_id]
    end
  end
end
