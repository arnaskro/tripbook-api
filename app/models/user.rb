class User < ActiveRecord::Base
  # Include default devise modules.
  devise  :database_authenticatable, 
          :registerable,
          :recoverable, 
          :rememberable, 
          :trackable, 
          :validatable,
          :omniauthable

  include DeviseTokenAuth::Concerns::User
  include Searchable
  
  has_one :local
  # Meetings & trips
  has_many :meetings
  has_many :scheduled_trips, through: :meetings 
  has_many :trips
  # Messages
  has_many :conversation_participants
  has_many :conversations, through: :conversation_participants

  scope :active, -> { where(active: true) }
  scope :inactive, -> { where(active: false) }

  def self.search(query, quantity = nil, fields = ["name", "lastname", "email"])
    super(query, quantity, fields)
  end

  def age
    if birthday
      d = Date.today
      bd = birthday

      a = d.year - bd.year
      a = a - 1 if (
          bd.month >  d.month or 
          (bd.month >= d.month and bd.day > d.day)
      )
      return a
    end
  end

  def get_local_id
    local ? local.id : nil
  end

end
