class MoodSerializer < ActiveModel::Serializer
  attributes :id, :feeling, :url

  has_many :quotes
end
