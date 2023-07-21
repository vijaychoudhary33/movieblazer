class Watchlist < ApplicationRecord
  belongs_to :user
  has_many :items, class_name: 'WatchlistsItem'

  def self.ransackable_attributes(auth_object = nil)
    %w(name visibility)
    # Take a look at https://github.com/heartcombo/devise/blob/master/lib/devise/models/authenticatable.rb#L59 : UNSAFE_ATTRIBUTES_FOR_SERIALIZATION
  
  end
  scope :sort_by_name_asc, lambda { order("name ASC") }
  scope :sort_by_name_desc, lambda { order("name DESC") }
  scope :sort_by_visibility_asc, lambda { order("visibility ASC") }
  scope :sort_by_visibility_desc, lambda { order("visibility DESC") }  

  enum visibility: {open: 'public',  closed: 'private'}

  validates :name, presence: true
  
 
  
end
