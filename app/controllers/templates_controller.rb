class TemplatesController < ApplicationController
  def index
    UserMailer.welcome.deliver_now
  end
end
