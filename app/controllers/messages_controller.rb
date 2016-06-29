class MessagesController < ApplicationController
  before_action :set_conversation

  def create
    @project = @conversation.project_id
    receipt = current_user.reply_to_conversation(@conversation, params[:body])
    redirect_to project_path(@project)
  end

  private

  def set_conversation
    @conversation = current_user.mailbox.conversations.find(params[:conversation_id])
  end
end
