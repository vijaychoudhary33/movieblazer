class RentalsController < ApplicationController
  def new
    @rental = Rental.new
    @rental.movie_id = params[:movie_id]
  end
  
  def create
    @rental = Rental.new(rental_params)
    if @rental.save
      redirect_to @rental, notice: "Rental created successfully."
    else
      render :new
    end

  end

  private
  def rental_params
    params.require(:rental).permit( :user_id, :movie_id, :starting_date, :end_date)
  end

end
