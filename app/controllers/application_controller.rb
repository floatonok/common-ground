class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) << :name
    devise_parameter_sanitizer.permit(:account_update) << :name
  end

  def get_mailbox
    @mailbox ||= current_user.mailbox
  end

  def get_conversation
    # @conversation ||= @mailbox.conversations.find(1)
  end

  # rescue_from ActiveRecord::RecordNotFound do
  #   flash[:warning] = 'Resource not found.'
  #   redirect_back_or root_path
  # end
  #
  # def redirect_back_or(path)
  #   redirect_to request.referer || path
  # end
end
