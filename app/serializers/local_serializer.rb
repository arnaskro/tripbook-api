class LocalSerializer < ActiveModel::Serializer
  attributes :id, :available, :description, :quote, :active, :city_id

  attribute :user do
    SimpleUserSerializer.new(object.user)
  end

  attribute :review_count do
    return object.review_count
  end

  attribute :rating do
    return object.rating
  end

end
