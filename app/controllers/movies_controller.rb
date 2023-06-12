class MoviesController < ApplicationController
  def index
    # @q = Movie.ransack(params[:q])
    # @movies = @q.result(distinct: true)
    @movies = Movie.order(:name).page params[:page]
  end

  def new
    @movie = Movie.new
  end

  def create 
    @movie = Movie.new(movie_params)

    if @movie.save
      redirect_to @movie
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def movie_params
    params.require(:movie).permit(:name, :description, :genre, :language, :director, :release_date, :run_time)
  end

      
end
