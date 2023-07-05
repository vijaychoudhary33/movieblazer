class MoviesController < ApplicationController
  before_action :authenticate_user!
  # respond_to :html, :json
  
  
  def index
    
    @q = Movie.ransack(params[:query])
    @movies = @q.result.page(params[:page])

    @csv_string = CSV.generate do |csv|
      csv <<  Movie.attribute_names
      Movie.find_each do |movie|
        csv << movie.attributes.values
      end
      respond_to do |format|
        format.html

        format.json do
          render json: @movies
        end
      end
    end

    def import()
      file = params[:file]
      csv_text = file.read
      csv = CSV.parse(csv_text, headers: true)
      csv.each do |row|
        Movie.create!(row.to_hash)
      end
      
    end

  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new
    @movie = Movie.new
  end

  def create 
    @movie = Movie.new(movie_params)
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

  def update
    @movie = Movie.find(params[:id])

    if @movie.update(movie_params)
      redirect_to @movie
    else
      render :edit, status: :unprocessable_entity
    end
  end


  private

  def movie_params
    params.require(:movie).permit(:name, :description, :genre, :language, :director, :release_date, :run_time, :image)
  end

      
end

