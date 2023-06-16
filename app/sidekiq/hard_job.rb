class HardJob
  include Sidekiq::Job

  def perform(*args)
    Rails.logger.info "+++++++++++++++++++++++++++++++++++"
  end
end
