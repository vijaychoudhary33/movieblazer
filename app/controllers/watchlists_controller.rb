class WatchlistsController < ApplicationController
  # before_action :authenticate_user!
  # skip_before_action :verify_authenticity_token 
  # skip_before_action :authenticate_user


  def index
    @q = Watchlist.ransack(params[:query])
    @watchlists = @q.result.page(params[:page])
  end

def new
    @watchlist = Watchlist.new
  end

  def create
    @watchlist = Watchlist.new(watchlist_params)

    if @watchlist.save
      flash[:notice] = "Watchlist created successfully!"
      render :new, status: 201
    else
      flash[:alert] = "Failed to create watchlist"
      render :new, status: 401
    end
  end
  def show
    @watchlist = Watchlist.find(params[:id])
    @items = @watchlist.items

    respond_to do |format|
      format.html
      format.json do
        render json: {watchlist:  @watchlist, items: @items}, msg: 'success', status: 200
      end
    end
  end
  

  def destroy

  end

  private
  
  def watchlist_params
    params.require(:watchlist).permit(:name, :visibility, :user_id)
  end

end
