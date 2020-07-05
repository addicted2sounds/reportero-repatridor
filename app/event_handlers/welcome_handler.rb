class WelcomeHandler < ApplicationHandler
  def perform
    user = OpenStruct.new(
      firstname: 'Guinea',
      lastname: 'Piggy'
    )
    EmailTemplatesMailer.welcome(user).deliver
  end
end
