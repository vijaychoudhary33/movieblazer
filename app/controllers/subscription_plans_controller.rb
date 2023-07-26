class SubscriptionPlansController < ApplicationController
	def index
    @subscription_plans = SubscriptionPlan.all
  end

end
