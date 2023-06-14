class MoviesController < ApplicationController
  def index
    @q = Movie.ransack(params[:query])
    @movies = @q.result.page(params[:page])



    # if params[:name].present?
    #   @movies = @movies.where("lower(name) LIKE ?", "%#{params[:name.downcase]}%")
    # end

    # if params[:rating].present?
    #   @movies = @movies.where("rating = ?", params[:rating])
    # end

    # if params[:genre].present?
    #   @movies = @movies.where("genre LIKE ?", "%#{params[:genre]}%")
    # end

    # if params[:language].present?
    #   @movies = @movies.where("language LIKE ?", "%#{params[:language]}%")
    # end
  end

  def new
    @movie = Movie.new
  end

  def create 
    @movie = Movie.new(name_cont: movie_params)
    @movie.image.attach(params[:movie][:image])

    if @movie.save
      redirect_to @movie
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

