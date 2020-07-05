class WelcomeHandler < ApplicationHandler
  def perform
    user = event[:data]
    EmailTemplatesMailer.welcome(user).deliver
  end
end
