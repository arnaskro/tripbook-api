module Searchable
	extend ActiveSupport::Concern

  module ClassMethods
    def search(query, quantity = 20, searchable_fields = ["name"])
      self.where(searchable_fields.map{ |field| "#{field} ILIKE :query" }.join(" OR "), query: "%#{query}%").take(quantity)
    end
  end
  
end