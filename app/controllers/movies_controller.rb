class MoviesController < ApplicationController
  def index
    @q = Movie.ransack(params[:query])
    @movies = @q.result.page(params[:page])

  end

  def new
    @movie = Movie.new
  end

  def create 
    @movie = Movie.new(movie_params)
    @movie.image.attach(params[:movie][:image])

    if @movie.save
      redirect_to @moviegybn  
    else
      render :new, status: :unprocessable_entity
    end
  end
  def edit
    @movie = Movie.find(params[:id])
  end


  private

  def movie_params
    params.require(:movie).permit(:name, :description, :genre, :language, :director, :release_date, :run_time, :image)
  end

      
end

