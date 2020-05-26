class MoodSerializer < ActiveModel::Serializer
  attributes :id, :feeling, :date, :weather, :note

  has_many :happenings
end
