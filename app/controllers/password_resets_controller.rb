class PasswordResetsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email])
    user.send_reset_password_instructions
    #:notice => "#{I18n.t 'global.resetMailSentNotification'}"
    #redirect_to root_url, flash[:notice] = I18n.t 'global.changePassword'
    redirect_to root_url, :notice => "Email sent with password reset instructions"
  end
end
