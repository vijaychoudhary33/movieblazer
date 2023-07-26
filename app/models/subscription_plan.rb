class SubscriptionPlan < ApplicationRecord
  has_many :subscriptions, class_name: 'subscription', foreign_key: 'subscription_plan_id'
end
