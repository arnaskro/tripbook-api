class TripSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :title, :description, :number_of_people, :from_date, :to_date, :city_id

  attribute :city do
    CitySerializer.new(object.city)
  end

  attribute :user do
    UserListItemSerializer.new(object.user)
  end

  attribute :url do
    v1_trip_path(id: object.id)
  end
end