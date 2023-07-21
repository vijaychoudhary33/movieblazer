class WatchlistsController < ApplicationController
  before_action :authenticate_user!

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
  end
  

  def destroy

  end

  private
  
  def watchlist_params
    params.require(:watchlist).permit(:name, :visibility, :user_id)
  end

end
