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
  # Bookings & trips
  has_many :bookings
  has_many :trips, through: :bookings 
  has_many :trips
  # Messages
  has_many :conversation_participants
  has_many :conversations, through: :conversation_participants

  scope :active, -> { where(active: true) }
  scope :inactive, -> { where(active: false) }

  attributes :has_local, :local_id

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

  def local_id
    get_local_id
  end
  
  def has_local
    return !local.nil? && local.active
  end

end
