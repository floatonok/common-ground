class CreateSections < ActiveRecord::Migration[5.0]
  def change
    create_table :sections do |t|
      t.belongs_to :project, foreign_key: true
      t.belongs_to :user, foreign_key: true
      t.string :header
      t.string :description

      t.timestamps
    end
  end
end
