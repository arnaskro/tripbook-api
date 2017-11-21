module Reviewable
  extend ActiveSupport::Concern
  
  included do
    has_many :reviews, as: :object
    
    scope :best_rated, -> { 
      joins(:reviews)
      .group("#{self.to_s.tableize}.id")
      .order('avg(reviews.stars) DESC NULLS LAST')
    }
  end
  
  def get_review_count
    return reviews.size
  end

  def get_rating
    return reviews.average(:stars) || 0
  end
  
end