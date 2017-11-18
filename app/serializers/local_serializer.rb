class LocalSerializer < ActiveModel::Serializer
  attributes :id, :available, :description, :quote, :active, :city_id

  attribute :user do
    SimpleUserSerializer.new(object.user)
  end

end
