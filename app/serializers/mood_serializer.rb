class MoodSerializer < ActiveModel::Serializer
  attributes :id, :feeling, :date, :weather, :note, :url

  has_many :happenings
end
