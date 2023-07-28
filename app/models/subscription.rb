class Subscription < ApplicationRecord
  belongs_to :user
  belongs_to :subscription_plan

  enum status: { active: 'active', expired: 'expired', canceled: 'canceled' }


end
