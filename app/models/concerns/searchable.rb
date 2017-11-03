module Searchable
	extend ActiveSupport::Concern

  module ClassMethods
    def search(query, quantity, searchable_fields = ["name"])
      list = self.where(searchable_fields.map{ |field| "#{field} ILIKE :query" }.join(" OR "), query: "%#{query}%")
      
      return quantity.nil? ? list : list.take(quantity)
    end
  end
  
end