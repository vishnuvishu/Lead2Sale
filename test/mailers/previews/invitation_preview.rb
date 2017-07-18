# Preview all emails at http://localhost:3000/rails/mailers/invitation
class InvitationPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/invitation/send_invitation
  def send_invitation
    Invitation.send_invitation
  end

end
