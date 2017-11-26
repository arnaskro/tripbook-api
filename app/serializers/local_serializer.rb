class LocalSerializer < ActiveModel::Serializer
  attributes :id, :available, :description, :quote, :active

  attribute :user do
    SimpleUserSerializer.new(object.user)
  end

  attribute :city do
    CitySerializer.new(object.city)
  end

  attribute :review_count do
    object.get_review_count
  end

  attribute :rating do
    object.get_rating
  end

end
