class AddMailboxerConversationRefToProjects < ActiveRecord::Migration[5.0]
  def change
    add_reference :projects, :mailboxer_conversation, foreign_key: true
  end
end
