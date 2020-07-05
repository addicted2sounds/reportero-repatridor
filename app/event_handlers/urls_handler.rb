class UrlsHandler < ApplicationHandler
  def perform
    urls = event.dig(:data, :urls)
    email = event.dig(:data, :email)
    EmailTemplatesMailer.urls(email, urls).deliver
  end
end
