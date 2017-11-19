class Conversation < ApplicationRecord
  has_many :conversation_participants, dependent: :destroy
  has_many :messages, through: :conversation_participants
end
