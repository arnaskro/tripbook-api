module Searchable
	extend ActiveSupport::Concern

  module ClassMethods
    def search(query, quantity = 20)
      self.where("name ILIKE ?", "%#{query}%").take(quantity)
    end
  end
  
end