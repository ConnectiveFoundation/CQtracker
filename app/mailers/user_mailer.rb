class UserMailer < ActionMailer::Base
  default from: "app32246337@heroku.com"

  def thanks_email(user)
  	@user = user
  	@url = 'https://fierce-reaches-4548.herokuapp.com/'
  	mail(to: @user.email, subject: 'Thank you for registering')
  end
end
