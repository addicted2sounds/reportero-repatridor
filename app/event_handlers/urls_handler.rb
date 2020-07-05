class UrlsHandler < ApplicationHandler
  def perform
    urls = event.dig(:data, :urls)
    email = event.dig(:data, :email)
    subject = event.dig(:data, :subject)
    EmailTemplatesMailer.urls(email, subject, urls).deliver
  end
end
