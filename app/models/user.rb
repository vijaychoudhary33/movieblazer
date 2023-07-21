class User < ApplicationRecord
 
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

  #callback
  after_create_commit :send_welcome_mail

  # Associations 
  has_many :watchlists

  protected
    def send_welcome_mail
      WelcomeMailJob.perform_at(Time.now,email)
    end
end
