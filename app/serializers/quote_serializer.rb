class QuoteSerializer < ActiveModel::Serializer
  attributes :id, :phrase, :mood_id

  # belongs_to :mood
end
