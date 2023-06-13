class Movie < ApplicationRecord
    paginates_per 10
    has_one_attached :image, :dependent=> :destroy
    
    def self.ransackable_attributes(auth_object = nil)
      %w(name genre)
      # Take a look at https://github.com/heartcombo/devise/blob/master/lib/devise/models/authenticatable.rb#L59 : UNSAFE_ATTRIBUTES_FOR_SERIALIZATION
    end

    def image_url
        if image.attached?
          Rails.application.routes.url_helpers.rails_blob_path image.blob, host: :localhost
        else
          ''
        end
      end
end
