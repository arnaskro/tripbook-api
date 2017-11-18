class LocalSerializer < ActiveModel::Serializer
  attributes :id, :available, :description, :quote, :active, :city_id

  attribute :user do
    SimpleUserSerializer.new(object.user)
  end

  attribute :review_count do
    object.get_review_count
  end

  attribute :rating do
    object.get_rating
  end

end
