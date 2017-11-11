class Conversation < ApplicationRecord
  has_many :participants, foreign_key: "conversation_id", class_name: "ConversationParticipant"
  has_many :messages, through: :participants
end
