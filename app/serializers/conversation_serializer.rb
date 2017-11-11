class ConversationSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id

  attribute :participants do
    object.participants.map do |x|
      {
        conversation_participant_id: x.id,
        user_id: x.user_id,
        name: x.user.name,
        lastname: x.user.lastname,
        email: x.user.email,
        url: v1_user_path(id: x.user_id)
      }
    end
  end 

  attribute :messages_url do
    v1_get_messages_path(id: object.id)
  end
end