class WelcomeMailer < ApplicationMailer
  default from: "juanjo.moya1@gmail.com"
  def welcome_email
    mail(to: "juanjo.moya1@gmail.com", subject: "Welcome")
  end
end
