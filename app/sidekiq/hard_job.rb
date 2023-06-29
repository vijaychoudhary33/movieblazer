class HardJob
  include Sidekiq::Job

  def perform
    Rails.logger.info "+++++++++++++++++++++++++++++++++++"
  end
end
