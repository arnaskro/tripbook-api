class MessageSerializer < ActiveModel::Serializer
  attributes :text

  attribute :participant_id do
    object.conversation_participant_id
  end

  attribute :date do
    object.created_at
  end

end