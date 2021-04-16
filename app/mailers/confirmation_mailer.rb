class ConfirmationMailer < ApplicationMailer
  default from: 'railsexampleapp@gmail.com'

  def confirmation_email
    @user = params[:user]
    mail(to: @user.email, subject: 'ThreadIt Signup Confirmation')
  end
end
