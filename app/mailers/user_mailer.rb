class UserMailer < ApplicationMailer
  default from: ENV["EMAIL"]

  def send_email_end_month user
    @user = user
    mail to: user.email, subject: "Mail journalier"
  end
end
