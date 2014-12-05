class UserMailer < ActionMailer::Base
  default from: "app32246337@heroku.com"

  def thanks_email(card)
  	@card = card
  	@url = 'https://fierce-reaches-4548.herokuapp.com/'
  	mail(to: @card.email, subject: 'Thank you for tracking a card')
  end
end
