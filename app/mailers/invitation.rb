class Invitation < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.invitation.send_invitation.subject
  #
  def send_invitation
    @user = user
    
    mail(to: @user.email, subject: "You have been invited")
  end
end
