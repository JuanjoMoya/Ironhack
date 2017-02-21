class SiteController < ApplicationController
  def welcome
    WelcomeMailer.welcome_email.deliver_now

    render plain: "Welcome!!!"
  end
end
