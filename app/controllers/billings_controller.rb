class BillingsController < ApplicationController

  
	def index
		@billings = Billing.all
	end

	def show
	end

	def new
		@billing = Billing.new
	end

	def create
	end



  private

	def billing_params
		params.require(:billing).permit(:user_id, :rent_id, :billing_date, :total_amount, :payment_method)
	end
end
		