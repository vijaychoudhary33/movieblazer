class MovieSerializer < ActiveModel::Serializer
  attributes :id, :name, :genre, :full_name

  def full_name
    "#{self.object.name} #{self.object.release_date}"
  end
end
