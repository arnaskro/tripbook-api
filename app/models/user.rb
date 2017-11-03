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
  belongs_to :country, required: false
  belongs_to :city, required: false

  scope :active, -> { where(active: true) }
  scope :inactive, -> { where(active: false) }

  def self.search(query, take = 20)
    super(query, take, ["name", "lastname", "email"])
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
end
