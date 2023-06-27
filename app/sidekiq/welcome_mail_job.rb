class WelcomeMailJob
  include Sidekiq::Job

  def perform(email)
    MovieMailer.welcome_email(email).deliver_now
  end
end
