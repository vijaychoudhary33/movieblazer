class Movie < ApplicationRecord
    
    paginates_per 10
    has_one_attached :image, :dependent=> :destroy
    def self.ransackable_attributes(auth_object = nil)
      %w(name genre rating language)
      # Take a look at https://github.com/heartcombo/devise/blob/master/lib/devise/models/authenticatable.rb#L59 : UNSAFE_ATTRIBUTES_FOR_SERIALIZATION
    end
    scope :sort_by_name_asc, lambda { order("name ASC") }
    scope :sort_by_name_desc, lambda { order("name DESC") }
    scope :sort_by_genre_asc, lambda { order("genre ASC") }
    scope :sort_by_genre_desc, lambda { order("genre DESC") }
    scope :sort_by_rating_asc, lambda { order("rating ASC") }
    scope :sort_by_rating_desc, lambda { order("rating DESC") }

    def image_url
        if image.attached?
          Rails.application.routes.url_helpers.rails_blob_path image.blob, host: :localhost
        else
          ''
        end
    end
    
    def topmovie
      "top Gun"
    end


    private 
    ransacker :rating do
      Arel.sql("to_char(\"#{table_name}\".\"rating\", '99')")
    end
end
