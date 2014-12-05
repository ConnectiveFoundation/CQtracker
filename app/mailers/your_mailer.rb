# app/mailers/your_mailer.rb

    class YourMailer < ActionMailer::Base
      def email_name
        mail :subject => "Mandrill rides the Rails!",
             :to      => "meghan.hartman@goverlan.com",
             :from    => "app32246337@heroku.com"
      end
    end