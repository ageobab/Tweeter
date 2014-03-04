class UserMailer < ActionMailer::Base
  layout "mailer"
  default from: "TweeterCustomerService@Tweeter.com"

  def welcome(user)
    @user = user
    to = @user.email
    mail(to: to, subject: 'Welcome to My Tweeter Sucka')
  end

end
