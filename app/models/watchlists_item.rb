class WatchlistsItem < ApplicationRecord
  belongs_to :watchlist
  belongs_to :movie
  
end
