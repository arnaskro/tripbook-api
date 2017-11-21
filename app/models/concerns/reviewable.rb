module Reviewable
  extend ActiveSupport::Concern
  
  included do
    has_many :reviews, as: :object
  end
  
  def get_review_count
    return reviews.size
  end

  def get_rating
    return reviews.average(:stars)
  end
  
end