class WelcomeHandler < ApplicationHandler
  def perform
    UserMailer.welcome.deliver_now
  end
end
