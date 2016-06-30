class ConversationsController < ApplicationController
  before_action :authenticate_user!
  before_action :get_mailbox
  before_action :get_conversation, only: [:show]

  def index
    @conversations = @mailbox.conversations
  end

  def new
    @recipients = User.all
  end

  def show
    @conversation = current_user.mailbox.conversations.find(params[:id])
  end

  def create
    recipients = User.where(id: params[:user_ids])
    receipt = current_user.send_message(recipients, params[:body], params[:subject])
    redirect_to conversation_path(receipt.conversation)
  end

  private


end
