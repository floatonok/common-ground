class AddAttachmentImageToSections < ActiveRecord::Migration
  def self.up
    change_table :sections do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :sections, :image
  end
end
