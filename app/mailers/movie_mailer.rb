class MovieMailer < ApplicationMailer
    default from: 'notifications@example.com'
    def welcome_email(email)
      mail(to: email, subject: 'Welcome to My Awesome Site')
    end
end
