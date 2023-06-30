class Import < ApplicationRecord
    has_one_attached :file
    validates :file,presence: true

    enum :status,[:pending, :processing, :completed , :failed]

    after_initialize :set_default_status

    private

    def set_default_status
      self.status ||= :pending
    end
 
    
    
end
