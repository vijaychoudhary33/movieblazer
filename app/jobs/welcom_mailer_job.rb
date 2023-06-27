class WelcomMailerJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # MovieMailer.welcome_email.deliver_now
  end
end
