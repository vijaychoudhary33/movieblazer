class MovieMailer < ApplicationMailer
    default from: 'notifications@example.com'
    def welcome_email
      mail(to: 'vijaychoudhary@gmail.com', subject: 'Welcome to My Awesome Site')
    end
end
