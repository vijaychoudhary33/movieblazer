class Subscription < ApplicationRecord
  belongs_to :user
  belongs_to :plan, class_name: :subscription_plan, foreign_key: 'subscription_plan_id'

  enum status: { active: 'active', expired: 'expired', canceled: 'canceled' }


end
