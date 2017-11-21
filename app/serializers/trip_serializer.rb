class TripSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :title, :description, :number_of_people, :from_date, :to_date

  attribute :city do
    CitySerializer.new(object.city)
  end

  attribute :user do
    UserListItemSerializer.new(object.user)
  end

  attribute :url do
    v1_trip_path(id: object.id)
  end
  
  attribute :review_count do
    object.get_review_count
  end

  attribute :rating do
    object.get_rating
  end
end