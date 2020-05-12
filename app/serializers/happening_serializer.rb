class HappeningSerializer < ActiveModel::Serializer
  attributes :id, :name, :mood_id

  # belongs_to :mood
end
  