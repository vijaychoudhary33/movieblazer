class SubscriptionsController < ApplicationController
  def index
		@subscription = Subscription.all
	end

	def new
		@subscription = Subscription.new

	end

	def create
		@user = current_user
		@subscription_plan = SubscriptionPlan.find(params[:subscription_plan_id])
		if @user.subscription.present?
			flash.alert = 'You have already Subscription!'
		  redirect_to @subscription_plan 
		else
			@user.create_subscription(subscription_plan: @subscription_plan, status: :active)
			redirect_to @subscription_plan, notice: 'Subscription created successfully!'
		end
		
			
	end

	private
  def sub_params
    params.require(:subscription).permit( :user_id, :subscription_plan_id, :status)
  end

end
