class UserMailer < ApplicationMailer
  def welcome
    mail to: 'user@mail.dev', subject: 'Welcome here'
  end
end
