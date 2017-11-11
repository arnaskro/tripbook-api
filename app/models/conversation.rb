class Conversation < ApplicationRecord
  has_many :participants, foreign_key: "conversation_id", class_name: "ConversationParticipant", dependent: :destroy
  has_many :messages, through: :participants
end
