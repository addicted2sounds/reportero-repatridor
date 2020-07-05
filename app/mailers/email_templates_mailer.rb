class EmailTemplatesMailer < Effective::EmailTemplatesMailer

  def welcome(user)
    @assigns = {
      'user' => {
        'first_name' => user[:first_name],
        'last_name' => user[:last_name],
        'email' => user[:email],
      }
    }
    mail(to: user[:email])
  end

  def urls(email, subject, urls)
    @assigns = { subject: subject, urls: urls }
    
    mail to: email
  end
end
